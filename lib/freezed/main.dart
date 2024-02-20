import 'package:flutter_learning/generic_state/freezed.dart';
import 'package:flutter_learning/plugins/logger.dart';

void main() {
  const freezed =
      AccountInfoFreezed(name: 'Mina', age: 30, favoriteFoods: ['coffee']);
  logger.d(
    'Freezed Equality: ${(freezed.copyWith() == freezed) ? 'true' : 'false'}',
  );

  final freezed2 = freezed.copyWith(age: 31, favoriteFoods: ['starbucks']);
  logger.d(
    'Freezed Normal Usecase ${freezed2.name} ${freezed2.age} ${freezed2.favoriteFoods}',
  );

  final unfreezed =
      AccountInfoUnfreezed(name: 'Nina', age: 30, favoriteFoods: ['coffee']);
  logger.d(
    'Unfreezed Equality: ${(unfreezed.copyWith() == unfreezed) ? 'true' : 'false'}',
  );

  final unfreezed2 = unfreezed.copyWith(age: 29, favoriteFoods: ['starbucks']);
  logger.d(
    'Unfreezed Normal Usecase: ${unfreezed2.name} ${unfreezed2.age} ${unfreezed2.favoriteFoods}',
  );
  unfreezed2
    ..name = 'Rina'
    ..favoriteFoods.last = 'Mos Burger';
  logger.d(
    'Unfreezed Normal Usecase: ${unfreezed2.name} ${unfreezed2.age} ${unfreezed2.favoriteFoods}',
  );

  final unfreezed3 = unfreezed2.copyWith();
  // ignore: cascade_invocations
  unfreezed3.name = 'Moa';
  unfreezed3.favoriteFoods.last = 'KFC';
  logger.d(
    'Unfreezed ListItem Shallow Copy!!: before:${unfreezed2.name} after:${unfreezed3.name} before:${unfreezed2.favoriteFoods} after:${unfreezed3.favoriteFoods}',
  );

  final unfreezed4 =
      unfreezed2.copyWith(name: 'nana', favoriteFoods: ['Excelsior']);
  logger.d(
    'Unfreezed ListItem Shallow Copy Resolved!!: before:${unfreezed2.name} after:${unfreezed4.name} before:${unfreezed2.favoriteFoods} after:${unfreezed4.favoriteFoods}',
  );

  final unfreezed5 = unfreezed2.copyWith()
    ..name = 'Mana'
    ..favoriteFoods.last = 'Subway';
  logger.d(
    'Unfreezed Cascade Shallow Copy?: before:${unfreezed2.name} after:${unfreezed5.name} before:${unfreezed2.favoriteFoods} after:${unfreezed5.favoriteFoods}',
  );
}
