// ignore_for_file: unnecessary_getters_setters

import '../../../plugins/logger.dart';

class ClassPP2 {
  ClassPP2();
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
