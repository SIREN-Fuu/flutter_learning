import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/config/flavor.dart';
import '../../application/interfaces/firebase.dart';
import '../../application/interfaces/logger.dart';
import '../../application/types/flavor.dart';
// DI は特別に外レイヤーをimportする
import '../../infrastructure/firebase/fake_firebase.dart';
import '../../infrastructure/firebase/firebase.dart';
import '../../infrastructure/log/fake_logger.dart';

/// Firebase
final firebaseProvider = Provider<FirebaseService>((ref) {
  return switch (flavor) {
    Flavor.dev => FakeFirebaseService(),
    Flavor.stg => FakeFirebaseService(),
    Flavor.prd => DefaultFirebaseService(),
  };
});

/// Logger
final loggerProvider = Provider<Logger>((ref) {
  return switch (flavor) {
    Flavor.dev => FakeLogger(),
    Flavor.stg => FakeLogger(),
    Flavor.prd => FakeLogger(),
  };
});
