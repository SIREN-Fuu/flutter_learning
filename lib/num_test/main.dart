// ignore_for_file: omit_local_variable_types

import '../../../plugins/logger.dart';
import 'class_num.dart';

void main() {
  // NOTE: intとdoubleの代入確認
  ClassNum()
    ..value = 1
    ..value = 1.5
    ..value = 2.5
    ..value = 3
    ..printValue();

  num test1 = 10;
  int test2 = 11;
  double test3 = 12;

  logger
    ..i('Number: $test1')
    ..i('Number: $test2')
    ..i('Number: $test3');

  // NOTE: キャストの確認
  test1 = 5.5;
  // Error
  // test2 = test1;
  test2 = test1.toInt();
  // Error
  // test3 = test1;
  test3 = test1.toDouble();

  logger
    ..i('Number: $test1')
    ..i('Number: $test2')
    ..i('Number: $test3');

  // NOTE: runtimeTypeの確認
  test1 = 100;
  logger
    ..i('Number: $test1')
    ..i('Number: ${test1.runtimeType}');
  test1 = 100.0000000;
  logger
    ..i('Number: $test1')
    ..i('Number: ${test1.runtimeType}');
  test1 = 100.00000001;
  logger
    ..i('Number: $test1')
    ..i('Number: ${test1.runtimeType}');
  test1 = 1001;
  logger
    ..i('Number: $test1')
    ..i('Number: ${test1.runtimeType}');
}
