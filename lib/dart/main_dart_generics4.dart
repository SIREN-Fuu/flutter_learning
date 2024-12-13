// ignore_for_file: unreachable_from_main

import 'dart:ui';

import '../plugins/logger.dart'; // Path クラスを使用するために必要

class TechnicalChildSetting {}

// ジェネリクスを使用して複数の型を指定
class TechnicalChild<ResultType, AdditionalResultType> {
  TechnicalChild({
    required this.technicalChildSetting,
    required this.results,
    required this.additionalResults,
    this.shift = 0,
  });

  final TechnicalChildSetting technicalChildSetting;
  final List<ResultType> results;
  final List<AdditionalResultType> additionalResults;
  final int shift;
}

void main() {
  final technicalChildSetting = TechnicalChildSetting();

  // List<double> 型の results と List<String> 型の additionalResults を持つ TechnicalChild インスタンス
  final doubleStringChild = TechnicalChild<double, String>(
    technicalChildSetting: technicalChildSetting,
    results: [1.0, 2.0, 3.0],
    additionalResults: ['a', 'b', 'c'],
  );
  logger
    ..d(doubleStringChild.results) // [1.0, 2.0, 3.0]
    ..d(doubleStringChild.additionalResults); // [a, b, c]

  // List<Path> 型の results と List<int> 型の additionalResults を持つ TechnicalChild インスタンス
  final pathIntChild = TechnicalChild<Path, int>(
    technicalChildSetting: technicalChildSetting,
    results: [Path(), Path()],
    additionalResults: [1, 2, 3],
  );
  logger
    ..d(pathIntChild.results) // [Instance of 'Path', Instance of 'Path']
    ..d(pathIntChild.additionalResults); // [1, 2, 3]
}
