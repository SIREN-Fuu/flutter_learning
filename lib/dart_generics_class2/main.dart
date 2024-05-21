// ignore_for_file: unreachable_from_main

import 'dart:ui'; // Path クラスを使用するために必要

import '../plugins/logger.dart';

class TechnicalChildSetting {}

// ジェネリクスを使用して results の型を柔軟にする
class TechnicalChild<T> {
  TechnicalChild({
    required this.technicalChildSetting,
    required this.results,
    this.shift = 0,
  });

  final TechnicalChildSetting technicalChildSetting;
  final List<T> results;
  final int shift;
}

void main() {
  final technicalChildSetting = TechnicalChildSetting();

  // List<double> 型の results を持つ TechnicalChild インスタンス
  final doubleChild = TechnicalChild<double>(
    technicalChildSetting: technicalChildSetting,
    results: [1.0, 2.0, 3.0],
  );
  logger.d(doubleChild.results); // [1.0, 2.0, 3.0]

  // List<Path> 型の results を持つ TechnicalChild インスタンス
  final pathChild = TechnicalChild<Path>(
    technicalChildSetting: technicalChildSetting,
    results: [Path(), Path()],
  );
  logger.d(pathChild.results); // [Instance of 'Path', Instance of 'Path']
}
