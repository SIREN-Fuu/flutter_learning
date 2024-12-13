import '../../../plugins/logger.dart';

void main() {
  num test1 = 100;
  logger
    ..i('Number of 100: $test1')
    ..i('Number of 100 runtimeType: ${test1.runtimeType}');
  test1 = 100.0;
  logger
    ..i('Number of 100.0: $test1')
    ..i('Number of 100.0 runtimeType: ${test1.runtimeType}');
  test1 = 1001;
  logger
    ..i('Number of 1001: $test1')
    ..i('Number of 1001 runtimeType: ${test1.runtimeType}');
}
