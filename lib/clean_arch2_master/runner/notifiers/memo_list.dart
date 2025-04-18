import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/config/memo.dart';
import '../../core/features/logger.dart';
import '../../core/features/memo_creator.dart';
import '../../core/types/analytics_event.dart';
import '../../core/types/memo.dart';
import '../../runner/providers/api.dart';

/// メモ一覧を管理するノティファイヤ
class MemoListNotifier extends AsyncNotifier<List<Memo>> {
  @override
  Future<List<Memo>> build() async {
    // ログ
    cleanArch2Logger.info('メモ一覧を初期化します');
    // Firestore から取得
    final firestore = ref.read(firestoreProvider);
    final memos = await firestore.findMemosByUserId('TEST_USER_ID');
    return memos;
  }

  /// リストの一番末尾にメモを追加する
  void add() {
    // ログ
    cleanArch2Logger.info('メモを追加します');

    // Firebaseにイベントを報告する
    ref.read(analyticsProvider).sendEvent(AnalyticsEvent.addNewMemo);

    // ドメインを呼んで新しいメモを作成
    final creator = MemoCreator(
      defaultText: memoConfig.defaultText,
    );
    final memo = creator.createNewMemo();

    final newList = [...state.value!, memo];
    state = AsyncData(newList);
  }

  /// 指定されたIDのメモを削除する
  void delete(String id) {
    // ログ
    cleanArch2Logger.info('メモを削除します');

    // Firebaseにイベントを報告する
    ref.read(analyticsProvider).sendEvent(AnalyticsEvent.deleteMemo);

    final newList = List.of(state.value!)
      ..removeWhere(
        (memo) => memo.id == id,
      );
    state = AsyncData(newList);
  }

  /// メモを上書きする
  void replace(Memo newMemo) {
    final newList = state.value!.map((it) {
      // id が一致したメモだけ新しい方を採用
      // それ以外はそのまま
      return it.id == newMemo.id ? newMemo : it;
    }).toList();
    state = AsyncData(newList);
  }
}
