// ignore_for_file: unnecessary_getters_setters

import 'package:flutter_learning/plugins/logger.dart';
import 'package:flutter_learning/public_private/class2.dart';

class Class1 {
  Class1();
  String _name = '';

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  void printName() {
    logger.i('Class1 Call!!');
    _printName();
  }

  void _printName() {
    logger.i('Class1 Private Call!!');
  }
}

class Class3 {
  Class3();
  String _name = '';
  String _email = '';
  String _password = '';

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get email => _email;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  set email(String value) {
    _email = value;
  }

  void printName() {
    logger.i('Class3 Call!!');
    _printName();
  }

  void _printName() {
    logger.i('Class3 Private Call!!');
    final class1 = Class1()..printName();
    final class2 = Class2()..printName();
    class1.name = 'Class1';
    class2.name = 'Class2';
    class1._name = 'Class1';
    // NOTE: ファイルが違うのでプライベートが適応
    // class2._name = 'Class1';

    Class1().printName();
    Class1()._printName();
    Class2().printName();
    // NOTE: ファイルが違うからプライベートが適応
    //Class2()._printName();
  }
}
