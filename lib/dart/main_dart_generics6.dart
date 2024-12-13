// ignore_for_file: unreachable_from_main

import 'dart:ui'; // Path クラスを使用するために必要

import '../plugins/logger.dart'; // logger.dを使用するために必要

class TechnicalSetting {}

class TechnicalChild {}

class TechnicalChildEx<T> {
  TechnicalChildEx({
    required this.technicalSetting,
    required this.children,
    required this.result,
  });

  final TechnicalSetting technicalSetting;
  final List<TechnicalChild> children;
  final T result;
}

void main() {
  final technicalSetting = TechnicalSetting();
  final children = <TechnicalChild>[];

  // List<double> 型の result を持つ TechnicalChildEx インスタンス
  final line = TechnicalChildEx<List<double>>(
    technicalSetting: technicalSetting,
    children: children,
    result: <double>[],
  );
  line.result.add(1.0);
  logger.d(line.result); // [1.0]

  // List<Path> 型の result を持つ TechnicalChildEx インスタンス
  final cloud = TechnicalChildEx<List<Path>>(
    technicalSetting: technicalSetting,
    children: children,
    result: <Path>[],
  );
  cloud.result.add(Path());
  logger.d(cloud.result); // [Instance of 'Path']
}
