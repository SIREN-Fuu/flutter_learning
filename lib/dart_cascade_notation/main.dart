import 'package:flutter_learning/generic_state/freezed.dart';
import 'package:flutter_learning/plugins/logger.dart';

void main() {
  final mina = AccountInfoUnfreezed(name: 'Mina', age: 30, favoriteFoods: []);
  final who = mina.copyWith()..name = 'Rina';
  logger.d('Cascade & Shallow Copy Test: ${mina.name} ${who.name}');

  final nina = AccountInfoUnfreezed(name: 'Nina', age: 20, favoriteFoods: [])
    ..name = 'Mana';
  logger.d('Cascade Test: ${nina.name}');

  final sample = Sample();
  logger.d('Cascade Return Test: ${sample.test().name}');
}

class Sample {
  AccountInfoUnfreezed test() {
    return AccountInfoUnfreezed(name: 'Mina', age: 20, favoriteFoods: [])
      ..name = 'Moa';
  }
}
