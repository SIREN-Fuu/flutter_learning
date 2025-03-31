// ignore_for_file: unused_local_variable

import 'package:flutter_learning/freezed_300/freezed_implements.dart';
import 'package:flutter_learning/freezed_300/freezed_mixin.dart';
import 'package:flutter_learning/freezed_300/freezed_mixin_default.dart';
import 'package:flutter_learning/plugins/logger.dart';

void main() {
  final ubuntu = OsUbuntu();
  final redHat = OsRedHat();
  final windows = OsWindows();

  logger
    ..d('OsUbuntu: ${ubuntu.toStringEx()}')
    ..d('OsRedHat: ${redHat.displayName}')
    ..d('Windows: ${windows.displayName}');
}
