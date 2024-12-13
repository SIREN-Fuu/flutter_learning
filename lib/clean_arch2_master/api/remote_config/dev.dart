import '../../core/features/logger.dart';
import '../../core/interfaces/remote_config.dart';
import '../../core/types/available_app_version.dart';

/// devフレーバー用の Firebase Remote Config
class DevRemoteConfig implements RemoteConfig {
  @override
  Future<AvailableAppVersion> getAvailableAppVersion() async {
    cleanArch2Logger.info('最新のアプリバージョンを取得開始します');
    await Future<void>.delayed(const Duration(seconds: 1));
    cleanArch2Logger.info('最新のアプリバージョンを取得完了しました');
    return const AvailableAppVersion(
      immediateUpdate: '0.0.0',
      flexibleUpdate: '0.0.0',
    );
  }
}
