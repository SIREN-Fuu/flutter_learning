import 'package:flutter_learning/clean_arch_riverpod_test/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/interfaces/logger.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/state/memo_list_notifier.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/types/analytics_event.dart';

/// メモを削除する
class DeleteMemoUsecase {
  DeleteMemoUsecase({
    required this.logger,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final MemoListNotifier listNotifier;
  final FirebaseService firebase;

  /// メモを削除する
  Future<void> deleteMemo(String id) async {
    logger.debug('DeleteMemoUsecase.deleteMemo()');

    // Firebaseにイベントを報告する
    await firebase.sendEvent(AnalyticsEvent.deleteMemo);

    // リストから削除して状態を変更
    listNotifier.delete(id);
  }
}
