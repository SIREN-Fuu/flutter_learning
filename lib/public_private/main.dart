import 'package:flutter_learning/public_private/class1.dart';
import 'package:flutter_learning/public_private/class2.dart';

void main() {
  final class1 = Class1()..printName();
  final class2 = Class2()..printName();
  class1.name = 'Class1';
  class2.name = 'Class2';

  // NOTE: ファイルが違うのでプライベートが適応
  //class1._printName();

  // NOTE: ファイルが違うのでプライベートが適応
  //class2._printName();

  Class3().printName();
}
