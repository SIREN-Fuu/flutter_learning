import '../../../plugins/logger.dart';
import 'freezed.dart';

void main() {
  final profile = ExampleFactory.city('Mina', 30, Calcs().calc);
  logger.d(profile.calc());

  final profileEx = ExampleFactoryEx.cityEx('Mina', 30);
  logger.d(profileEx.runtimeType);

  final profileEx2 = ExampleFactoryEx.cityEx2('Nina', 29);
  logger.d(profileEx2.runtimeType);

  final profileEx3 = CityEx('Mina', 30);
  logger.d(profileEx3.runtimeType);
  profileEx3.calc();

  final profileEx4 = CityEx2('Mina', 30);
  logger.d(profileEx4.runtimeType);
  profileEx4.calc();

  const freezed = Freezed(name: 'Mina', age: 30, list: ['a', 'b', 'c']);
  logger.d(freezed);
  final freezed2 =
      freezed.copyWith(name: 'Mina', age: 30, list: ['a', 'b', 'c']);
  logger.d(freezed2);
  final freezed3 = freezed2.copyWith(list: ['z', 'z', 'z']);
  logger
    ..d(freezed3)
    ..d(freezed2);

  final unfreezed = Unfreezed(name: 'Mina', age: 30, list: ['a', 'b', 'c']);
  logger.d(unfreezed);
  final unfreezed2 =
      unfreezed.copyWith(name: 'Mina', age: 30, list: ['a', 'b', 'c']);
  logger.d(unfreezed2);
  final unfreezed3 = unfreezed2.list = ['z', 'z', 'z'];
  logger
    ..d(unfreezed3)
    ..d(unfreezed2);
}
