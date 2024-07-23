// ignore_for_file: unused_local_variable

import 'package:flutter_learning/freezed_implement/freezed_implements.dart';
import 'package:flutter_learning/freezed_implement/freezed_mixin.dart';

void main() {
  final ubuntu = OsLinux.ubuntu();
  final redHat = OsLinux.redHat();
  final windows = OsWindows.windows();
  final windowsEx = Windows();
  final windowsNT = OsWindows.windowsNT();
  final macOS = OsApple.macOS();
  final iOS = OsApple.iOS();

  // windows.getVersion(); //Mixinしていない
  windowsEx.getVersion();

  macOS.getVersion();
}
