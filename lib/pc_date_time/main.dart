import 'dart:core';

import 'package:flutter_learning/plugins/logger.dart';

void main() {
  final dateTimes = List<DateTime>.generate(
    10000,
    (index) => DateTime.now().add(Duration(days: index)),
  );

  final targetDateTime = dateTimes[9999];

  final stopwatch = Stopwatch()..start();
  // final foundDateTime = dateTimes.firstWhere(
  //   (dateTime) => dateTime == targetDateTime,
  //   orElse: DateTime.now,
  // );

  late DateTime foundDateTime;
  for (var z = 0; z < 10; z++) {
    for (var i = 0; i < dateTimes.length; i++) {
      if (dateTimes[i] == targetDateTime) {
        foundDateTime = dateTimes[i];
        break;
      }
    }
  }
  stopwatch.stop();

  logger.d(
    'Time taken to find DateTime: ${stopwatch.elapsedMicroseconds} microseconds  $foundDateTime',
  );

  final numbers = List<int>.generate(
    10000,
    (index) => index++,
  );

  const targetNumber = 9999;

  final stopwatchNumber = Stopwatch()..start();
  late int foundNumber;
  for (var z = 0; z < 10; z++) {
    for (var i = 0; i < numbers.length; i++) {
      if (numbers[i] == targetNumber) {
        foundNumber = numbers[i];
        break;
      }
    }
  }
  stopwatchNumber.stop();

  logger.d(
    'Time taken to find DateTime: ${stopwatchNumber.elapsedMicroseconds} microseconds  $foundNumber',
  );
}
