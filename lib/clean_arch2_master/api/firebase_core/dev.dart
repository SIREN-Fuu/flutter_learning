import '../../core/features/logger.dart';
import '../../core/interfaces/firebase_core.dart';

/// devフレーバー用の Firebase Core
class DevFirebaseCore implements FirebaseCore {
  @override
  Future<void> init() async {
    cleanArch2Logger.info('firebase core の初期化を開始します');
    await Future<void>.delayed(const Duration(seconds: 1));
    cleanArch2Logger.info('firebase core の初期化が完了しました');
  }
}
