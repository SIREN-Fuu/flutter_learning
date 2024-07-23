import 'package:flutter_learning/plugins/logger.dart';

abstract class Status {
  String get key;
  String get displayName;
}

mixin Utility {
  int getVersion() {
    logger.d('Version: 1.0.0');
    return 1;
  }
}
