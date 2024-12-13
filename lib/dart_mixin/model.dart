import 'package:flutter_learning/plugins/logger.dart';

class FavoriteFood with FoodMixin {
  FavoriteFood({required this.name});
  String name;

  // mixinしたメソッドを呼び出す
  void printNameEx() {
    printName(name: name);
  }
}

mixin FoodMixin {
  void printName({required String name}) {
    logger.d('Name: $name');
  }
}
