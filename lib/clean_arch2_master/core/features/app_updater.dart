import '../../core/types/app_update_action.dart';
import '../../core/types/available_app_version.dart';

/// アプリのアップデートを担当するクラス
class AppUpdater {
  const AppUpdater();

  /// 情報からアップデートのアクションを決定する
  ///   - available: 最新の利用可能なアプリバージョン
  ///   - appVersion: このアプリのバージョン
  AppUpdateAction makeAction(
    AvailableAppVersion available,
    String appVersion,
  ) {
    /// 強制アップデートするべきバージョン
    final immediate = available.immediateUpdate;
    final shouldImmediate = _compareVersions(appVersion, immediate);
    if (shouldImmediate > 0) {
      // 強制アップデートが必要
      return AppUpdateAction.showImmediateUpdate;
    }

    /// 任意アップデートするべきバージョン
    final frexible = available.flexibleUpdate;
    final shouldFrexible = _compareVersions(appVersion, frexible);
    if (shouldFrexible > 0) {
      // 任意アップデートが必要
      return AppUpdateAction.showFrexibleUpdate;
    }

    /// アクション不要
    return AppUpdateAction.none;
  }

  /// X.Y.Z 形式のバージョンを比較する
  /// _compareVersions(A, B)
  /// &lt;return&gt;
  ///   -1: Aの方が大きい
  ///    0: 等しい
  ///   +1: Bの方が大きい
  int _compareVersions(String verA, String verB) {
    final partsA = verA.split('.').map(int.parse).toList();
    final partsB = verB.split('.').map(int.parse).toList();

    // Compare each part of the version
    for (var i = 0; i < partsA.length; i++) {
      final a = partsA[i];
      final b = partsB[i];
      if (a < b) {
        return 1;
      } else if (a > b) {
        return -1;
      }
    }

    return 0;
  }
}
