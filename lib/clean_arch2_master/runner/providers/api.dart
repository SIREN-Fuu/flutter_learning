import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/analytics/dev.dart';
import '../../api/analytics/prd.dart';
import '../../api/analytics/stg.dart';
import '../../api/app_info/default.dart';
import '../../api/auth/dev.dart';
import '../../api/auth/prd.dart';
import '../../api/auth/stg.dart';
import '../../api/console/dev.dart';
import '../../api/console/prd.dart';
import '../../api/console/stg.dart';
import '../../api/example/dev.dart';
import '../../api/example/prd.dart';
import '../../api/example/stg.dart';
import '../../api/firebase_core/dev.dart';
import '../../api/firebase_core/prd.dart';
import '../../api/firebase_core/stg.dart';
import '../../api/firestore/dev.dart';
import '../../api/firestore/prd.dart';
import '../../api/firestore/stg.dart';
import '../../api/remote_config/dev.dart';
import '../../api/remote_config/prd.dart';
import '../../api/remote_config/stg.dart';
import '../../api/system_locale/default.dart';
import '../../core/features/logger.dart';
import '../../core/interfaces/analytics.dart';
import '../../core/interfaces/app_info.dart';
import '../../core/interfaces/auth.dart';
import '../../core/interfaces/console.dart';
import '../../core/interfaces/example.dart';
import '../../core/interfaces/firebase_core.dart';
import '../../core/interfaces/firestore.dart';
import '../../core/interfaces/remote_config.dart';
import '../../core/interfaces/systems_locale.dart';
import '../../core/types/flavor.dart';
import '../../runner/providers/flavor.dart';

/// Console
final consoleProvider = Provider<Console>((ref) {
  final flavor = ref.watch(flavorProvider);
  final console = switch (flavor) {
    Flavor.dev => DevConsole(),
    Flavor.stg => StgConsole(),
    Flavor.prd => PrdConsole(),
  };
  // 毎回ref.watchは大変なので コンソールは特別に グローバルにキャッシュする
  cleanArch2Logger = console;
  return console;
});

/// Example
final exampleApiProvider = Provider<ExampleApi>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevExampleApi(),
    Flavor.stg => StgExampleApi(),
    Flavor.prd => PrdExampleApi(),
  };
});

/// Firebase Core
final firebaseCoreProvider = Provider<FirebaseCore>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevFirebaseCore(),
    Flavor.stg => StgFirebaseCore(),
    Flavor.prd => PrdFirebaseCore(),
  };
});

/// Firebase Analytics
final analyticsProvider = Provider<Analytics>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevAnalytics(),
    Flavor.stg => StgAnalytics(),
    Flavor.prd => PrdAnalytics(),
  };
});

/// Firebase Auth
final authProvider = Provider<Auth>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevAuth(),
    Flavor.stg => StgAuth(),
    Flavor.prd => PrdAuth(),
  };
});

/// Firestore
final firestoreProvider = Provider<Firestore>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevFirestore(),
    Flavor.stg => StgFirestore(),
    Flavor.prd => PrdFirestore(),
  };
});

/// System Locale
final systemLocaleProvider = Provider<SystemLocale>((ref) {
  return DefaultSystemLocale();
});

/// Remote Config
final remoteConfigProvider = Provider<RemoteConfig>((ref) {
  final flavor = ref.watch(flavorProvider);
  return switch (flavor) {
    Flavor.dev => DevRemoteConfig(),
    Flavor.stg => StgRemoteConfig(),
    Flavor.prd => PrdRemoteConfig(),
  };
});

/// アプリ情報
final appInfoProvider = Provider<AppInfo>((ref) {
  return DefaultAppInfo();
});
