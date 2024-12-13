import 'dart:core';

import '../plugins/logger.dart';
import 'date_time_string.dart';

void main() {
  final dt = DateTimeString.fromString('2000.01.01.01.01.01');
  logger.d(dt.value);

  final dt2 = DateTimeString.fromStringEx(
    year: 2000,
    month: 1,
    day: 1,
    hour: 1,
    minute: 1,
    second: 1,
  );
  logger.d(dt2.value);
}
