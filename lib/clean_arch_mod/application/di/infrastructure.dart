import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/config/flavor.dart';
import '../../application/interfaces/firebase.dart';
import '../../application/interfaces/logger.dart';
import '../../application/types/flavor.dart';
import '../../infrastructure/firebase/fake_firebase.dart';
import '../../infrastructure/firebase/firebase.dart';
import '../../infrastructure/logger/fake_logger.dart';
import '../../infrastructure/logger/logger.dart';

// DI は特別に外レイヤーをimportする

part 'infrastructure.g.dart';

/// Firebase
@Riverpod(keepAlive: true)
FirebaseService firebase(Ref ref) {
  switch (flavor) {
    case Flavor.dev:
      return FakeFirebaseService();
    case Flavor.stg:
      return FakeFirebaseService();
    case Flavor.prd:
      return DefaultFirebaseService();
  }
}

/// Logger
@Riverpod(keepAlive: true)
CleanArchLogger logger(Ref ref) {
  switch (flavor) {
    case Flavor.dev:
      return FakeLogger();
    case Flavor.stg:
      return FakeLogger();
    case Flavor.prd:
      return DefaultLogger();
  }
}
