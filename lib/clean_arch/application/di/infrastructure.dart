import 'package:flutter_learning/clean_arch/application/config/flavor.dart';
import 'package:flutter_learning/clean_arch/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch/application/interfaces/logger.dart';
import 'package:flutter_learning/clean_arch/application/types/flavor.dart';
import 'package:flutter_learning/clean_arch/infrastructure/firebase/fake_firebase.dart';
import 'package:flutter_learning/clean_arch/infrastructure/firebase/firebase.dart';
import 'package:flutter_learning/clean_arch/infrastructure/logger/fake_logger.dart';
import 'package:flutter_learning/clean_arch/infrastructure/logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// DI は特別に外レイヤーをimportする

part 'infrastructure.g.dart';

/// Firebase
@Riverpod(keepAlive: true)
FirebaseService firebase(FirebaseRef ref) {
  switch (flavor) {
    case Flavor.dev:
      return FakeFirebaseService();
    case Flavor.stg:
      return FakeFirebaseService();
    case Flavor.prd:
      return DefaultFirebaseService();
  }
}

// final firebaseProvider = Provider<FirebaseService>(
//   (ref) {
//     switch (flavor) {
//       case Flavor.dev:
//         return FakeFirebaseService();
//       case Flavor.stg:
//         return FakeFirebaseService();
//       case Flavor.prd:
//         return DefaultFirebaseService();
//     }
//   },
// );

/// Logger
@Riverpod(keepAlive: true)
Logger logger(LoggerRef ref) {
  switch (flavor) {
    case Flavor.dev:
      return FakeLogger();
    case Flavor.stg:
      return FakeLogger();
    case Flavor.prd:
      return DefaultLogger();
  }
}

// final loggerProvider = Provider<Logger>(
//   (ref) {
//     switch (flavor) {
//       case Flavor.dev:
//         return FakeLogger();
//       case Flavor.stg:
//         return FakeLogger();
//       case Flavor.prd:
//         return DefaultLogger();
//     }
//   },
// );
