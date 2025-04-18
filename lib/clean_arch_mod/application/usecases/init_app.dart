import '../../application/config/memo.dart';
import '../../application/interfaces/firebase.dart';
import '../../application/interfaces/logger.dart';
import '../../application/state/memo_list_notifier.dart';

/// アプリの初期準備をする
class InitAppUsecase {
  InitAppUsecase({
    required this.logger,
    required this.firebase,
    required this.listNotifier,
  });
  final CleanArchLogger logger;
  final FirebaseService firebase;
  final MemoListNotifier listNotifier;

  /// 一連の流れをまとめて実施する
  Future<void> execute() async {
    logger.debug('InitAppUsecase.execute()');

    // Firebaseを初期化
    await firebase.init();

    // リスト一覧を初期化
    // 今回はサンプルデータを使う
    final initialList = memoConfig.exampleMemos;
    listNotifier.set(initialList);
  }
}
