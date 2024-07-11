import 'package:flutter_learning/generic_state/freezed.dart';
import 'package:flutter_learning/plugins/logger.dart';

void main() {
  const freezedMina =
      AccountInfoFreezed(name: 'Mina', age: 30, favoriteFoods: ['coffee']);

  logger.d(
    'Freezed Equality: ${(freezedMina.copyWith() == freezedMina) ? 'true' : 'false'}',
  );

  final freezedMinaCopy =
      freezedMina.copyWith(age: 31, favoriteFoods: ['starbucks']);
  logger.d(
    'Freezed Normal Usecase ${freezedMinaCopy.name} ${freezedMinaCopy.age} ${freezedMinaCopy.favoriteFoods}',
  );

  final unfreezedNina =
      AccountInfoUnfreezed(name: 'Nina', age: 30, favoriteFoods: ['coffee']);
  logger.d(
    'Unfreezed Equality: ${(unfreezedNina.copyWith() == unfreezedNina) ? 'true' : 'false'}',
  );

  final unfreezedNinaCopy =
      unfreezedNina.copyWith(age: 29, favoriteFoods: ['starbucks']);
  logger.d(
    'Unfreezed Normal Usecase: ${unfreezedNinaCopy.name} ${unfreezedNinaCopy.age} ${unfreezedNinaCopy.favoriteFoods}',
  );
  unfreezedNinaCopy
    ..name = 'Rina'
    ..favoriteFoods.last = 'Mos Burger';
  logger.d(
    'Unfreezed Normal Usecase: ${unfreezedNinaCopy.name} ${unfreezedNinaCopy.age} ${unfreezedNinaCopy.favoriteFoods}',
  );

  final unfreezedNinaCopyMoa = unfreezedNinaCopy.copyWith();
  // ignore: cascade_invocations
  unfreezedNinaCopyMoa.name = 'Moa';
  unfreezedNinaCopyMoa.favoriteFoods.last = 'KFC';
  logger.d(
    'Unfreezed ListItem Shallow Copy!!: before:${unfreezedNinaCopy.name} after:${unfreezedNinaCopyMoa.name} before:${unfreezedNinaCopy.favoriteFoods} after:${unfreezedNinaCopyMoa.favoriteFoods}',
  );

  final unfreezedNinaCopyNana =
      unfreezedNinaCopy.copyWith(name: 'nana', favoriteFoods: ['Excelsior']);
  logger.d(
    'Unfreezed ListItem Shallow Copy Resolved!!: before:${unfreezedNinaCopy.name} after:${unfreezedNinaCopyNana.name} before:${unfreezedNinaCopy.favoriteFoods} after:${unfreezedNinaCopyNana.favoriteFoods}',
  );

  final unfreezedNinaCopyMana = unfreezedNinaCopy.copyWith()
    ..name = 'Mana'
    ..favoriteFoods.last = 'Subway';
  logger.d(
    'Unfreezed Cascade Shallow Copy?: before:${unfreezedNinaCopy.name} after:${unfreezedNinaCopyMana.name} before:${unfreezedNinaCopy.favoriteFoods} after:${unfreezedNinaCopyMana.favoriteFoods}',
  );

  // 値代入テスト
  // Setter is not defined for 'name'.
  // freezedMina.name = 'Aria';
}
