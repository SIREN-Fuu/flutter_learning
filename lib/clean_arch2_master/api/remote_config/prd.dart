import '../../core/interfaces/remote_config.dart';
import '../../core/types/available_app_version.dart';

/// prdフレーバー用の Firebase Remote Config
class PrdRemoteConfig implements RemoteConfig {
  @override
  Future<AvailableAppVersion> getAvailableAppVersion() async {
    return const AvailableAppVersion(
      immediateUpdate: '0.0.0',
      flexibleUpdate: '0.0.0',
    );
  }
}
