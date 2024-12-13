// ignore_for_file: unused_local_variable

import 'package:flutter_learning/freezed_implement/freezed_implements.dart';
import 'package:flutter_learning/freezed_implement/freezed_mixin.dart';
import 'package:flutter_learning/plugins/logger.dart';

void main() {
  final ubuntu = OsLinux.ubuntu();
  final redHat = OsLinux.redHat();
  final windows = OsWindows.windows();
  final windowsEx = Windows();
  final windowsNT = OsWindows.windowsNT();
  final macOS = OsApple.macOS();
  final iOS = OsApple.iOS();

  // windows.getVersion(); //Mixinしていない

  // FreezedだがMixinのメンバーは代入が可能になっている
  windowsEx
    ..version = 'Version: 1.0.2'
    ..getVersion();
  logger.d('windowsEx: ${windowsEx.toStringEx()}');

  macOS
    ..version = 'Version: 1.0.3'
    ..getVersion();
  logger.d('macOS: ${macOS.toStringEx()}');
}
