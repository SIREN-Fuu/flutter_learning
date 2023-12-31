import 'package:flutter_learning/clean_arch/application/config/memo.dart';
import 'package:flutter_learning/clean_arch/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch/application/interfaces/logger.dart';
import 'package:flutter_learning/clean_arch/application/state/memo_list_notifier.dart';
import 'package:flutter_learning/clean_arch/application/types/analytics_event.dart';
import 'package:flutter_learning/clean_arch/domain/features/memo_creator.dart';

/// メモを追加する
class AddMemoUsecase {
  AddMemoUsecase({
    required this.logger,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final MemoListNotifier listNotifier;
  final FirebaseService firebase;

  /// 新しいメモをリストに追加する
  Future<void> addNewMemo() async {
    logger.debug('AddMemoUsecase.addNewMemo()');
    // Firebaseにイベントを報告する
    await firebase.sendEvent(AnalyticsEvent.addNewMemo);

    // ドメインを呼んで新しいメモを作成
    final creator = MemoCreator(
      defaultText: memoConfig.defaultText,
    );
    final memo = creator.createNewMemo();

    // リストに追加して状態を変更
    listNotifier.add(memo);
  }
}
