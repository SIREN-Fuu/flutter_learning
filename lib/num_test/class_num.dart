// ignore_for_file: unnecessary_getters_setters, omit_local_variable_types

import 'package:flutter_learning/plugins/logger.dart';

class ClassNum {
  ClassNum();
  num _value = 0;

  num get value => _value;

  set value(num value) {
    _value = value;
  }

  void printValue() {
    logger.i('Number: $_value');
  }
}
