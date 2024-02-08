import 'class_pp1.dart';
import 'class_pp2.dart';

void main() {
  final class1 = ClassPP1()..printName();
  final class2 = ClassPP2()..printName();
  class1.name = 'Class1';
  class2.name = 'Class2';

  // NOTE: ファイルが違うのでプライベートが適応
  //class1._printName();

  // NOTE: ファイルが違うのでプライベートが適応
  //class2._printName();

  ClassPP3().printName();
}
