// ignore_for_file: unused_local_variable

import '../plugins/logger.dart';

class Water extends Drink {
  Water(super.amount);
}

class Coffee extends Drink {
  Coffee(super.amount);
}

class Drink {
  Drink(this.amount);

  factory Drink.createDrink({required int amount, bool breakTime = false}) =>
      breakTime ? Coffee(amount) : Water(amount);

  int amount;
}

void main() {
  final myBreakDrink = Drink.createDrink(amount: 200, breakTime: true);
  // Instance of 'Coffee'
  logger.d(myBreakDrink.amount);

  final mySportDrink = Drink.createDrink(amount: 500);
  // Instance of 'Water'
  logger.d(mySportDrink.amount);
}
