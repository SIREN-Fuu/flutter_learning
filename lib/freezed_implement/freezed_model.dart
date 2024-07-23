import 'package:flutter_learning/plugins/logger.dart';

abstract class Status {
  String get key;
  String get displayName;
}

mixin Utility {
  String version = 'Version: 1.0.1';
  int getVersion() {
    logger.d(version);
    return 1;
  }
}
