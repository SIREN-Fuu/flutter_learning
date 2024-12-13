import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/app_updater.dart';
import '../../core/features/logger.dart';
import '../../core/types/app_init_result.dart';
import '../../core/types/app_update_action.dart';
import '../../runner/providers/api.dart';

/// アプリ初期化の結果
class AppInitResultNotifier extends AsyncNotifier<AppInitResult> {
  @override
  Future<AppInitResult> build() async {
    // ログ
    cleanArch2Logger.info('アプリの初期化を開始します');

    // これはデモなので適当に3秒まって待機画面を見せる
    // この行を消しても問題ない
    await Future<void>.delayed(const Duration(seconds: 3));

    // Firebaseを初期化
    final firebaseCore = ref.read(firebaseCoreProvider);
    await firebaseCore.init();

    // システムロケールを初期化
    final systemLocale = ref.read(systemLocaleProvider);
    await systemLocale.init();

    // アップデートを確認
    /// 利用可能なアプリバージョンを取得
    final remoteConfig = ref.read(remoteConfigProvider);
    final available = await remoteConfig.getAvailableAppVersion();

    /// このアプリのバージョンを取得
    final appInfo = ref.read(appInfoProvider);
    final appVersion = await appInfo.getAppVersion();

    /// 2つのバージョンを比較
    const updater = AppUpdater();
    final action = updater.makeAction(available, appVersion);
    if (action == AppUpdateAction.showImmediateUpdate) {
      cleanArch2Logger.info('強制アップデートを発見したため 初期化を中断します');
      return AppInitResult.immediateUpdate;
    }

    // サインインしているかどうか
    final auth = ref.read(authProvider);
    final isSignedIn = await auth.isSignedIn();

    cleanArch2Logger.info('アプリの初期化が完了しました');

    if (isSignedIn) {
      return AppInitResult.signedIn;
    } else {
      return AppInitResult.signedOut;
    }
  }
}
