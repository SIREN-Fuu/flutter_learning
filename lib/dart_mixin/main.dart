import 'package:flutter_learning/dart_mixin/model.dart';

void main() {
  final food = FavoriteFood(name: 'Pizza');
  food
    ..printNameEx()
    ..printName(name: food.name);
}
