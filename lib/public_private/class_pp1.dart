// ignore_for_file: unnecessary_getters_setters

import 'package:flutter_learning/plugins/logger.dart';
import 'package:flutter_learning/public_private/class_pp2.dart';

class ClassPP1 {
  ClassPP1();
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

class ClassPP3 {
  ClassPP3();
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
    final class1 = ClassPP1()..printName();
    final class2 = ClassPP2()..printName();
    class1.name = 'Class1';
    class2.name = 'Class2';
    class1._name = 'Class1';
    // NOTE: ファイルが違うのでプライベートが適応
    // class2._name = 'Class1';

    ClassPP1().printName();
    ClassPP1()._printName();
    ClassPP2().printName();
    // NOTE: ファイルが違うからプライベートが適応
    //Class2()._printName();
  }
}
