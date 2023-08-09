// ignore_for_file: unnecessary_getters_setters

import 'package:flutter_learning/plugins/logger.dart';

class Class2 {
  Class2();
  String _name = '';

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  void printName() {
    logger.i('Class2 Call!!');
    _printName();
  }

  void _printName() {
    logger.i('Class2 Private Call!!');
  }
}
