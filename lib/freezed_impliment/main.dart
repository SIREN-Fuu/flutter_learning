import 'package:flutter_learning/plugins/logger.dart';

import 'freezed.dart';

void main() {
  final profile = ExampleFactory.city('Mina', 30, Calcs().calc);
  logger.d(profile.calc());

  final profileEx = ExampleFactoryEx.cityEx('Mina', 30);
  logger.d(profileEx.runtimeType);
  // profileEx.

  final profileEx2 = ExampleFactoryEx.cityEx2('Nina', 29);
  logger.d(profileEx2.runtimeType);

  final profileEx3 = CityEx('Mina', 30);
  logger.d(profileEx3.runtimeType);
  profileEx3.calc();

  final profileEx4 = CityEx2('Mina', 30);
  logger.d(profileEx4.runtimeType);
  profileEx4.calc();
}
