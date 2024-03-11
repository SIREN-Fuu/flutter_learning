import 'dart:core';

import '../plugins/logger.dart';
import 'date_time_string.dart';

void main() {
  const dt = DateTimeString();
  logger.d(dt.value);

  const dt2 = DateTimeString(value: '2000.01.01.01.01.01');
  logger.d(dt == dt2);
}
