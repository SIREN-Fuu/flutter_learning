import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/config/memo.dart';
import '../../core/features/logger.dart';
import '../../core/features/memo_updater.dart';
import '../../core/features/memo_validator.dart';
import '../../core/types/memo.dart';
import '../../runner/providers/memo_list.dart';

/// 編集中メモを管理するノティファイヤ
class EditingMemoNotifier extends FamilyNotifier<Memo, String> {
  EditingMemoNotifier();

  @override
  Memo build(String arg) {
    final memos = ref.read(memoListProvider);
    return memos.value!.firstWhere((it) => it.id == arg);
  }

  /// ステータスを次に進める
  Future<void> editStatus() async {
    // ログ
    cleanArch2Logger.info('ステータスを編集します');
    // ドメインを呼んでステータスを変更する
    const updater = MemoUpdater();
    final memo = updater.switchStatus(state);
    // 編集中のメモの状態を変更する
    state = memo;
  }

  /// メモの内容を編集する
  Future<void> editText(String newText) async {
    // ログ
    cleanArch2Logger.info('テキストを編集します');
    // ドメインを呼んでステータスを変更する
    const updater = MemoUpdater();
    final memo = updater.updateText(
      state,
      newText,
    );
    // 編集中のメモの状態を変更する
    state = memo;
  }

  /// 編集した内容を保存する
  Future<void> save({
    required void Function() onValidateFailure,
    required void Function() onSuccess,
  }) async {
    // ログ
    cleanArch2Logger.info('編集内容を保存します');
    // ドメインを呼んで内容をチェックする
    final validator = MemoValidator(
      maxLength: memoConfig.maxLength,
    );
    final ok = validator.validateLength(state);
    // ルール違反のときはダイアログを表示して終了
    if (!ok) {
      onValidateFailure();
      return;
    }
    // リスト一覧のメモを上書きして状態を変更
    ref.read(memoListProvider.notifier).replace(state);

    // 成功を知らせる
    onSuccess();
  }
}
