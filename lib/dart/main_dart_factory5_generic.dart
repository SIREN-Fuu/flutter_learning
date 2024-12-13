//ジェネリクス+Factoryコンストラクタは書けない

// ignore_for_file: unreachable_from_main

import 'dart:ui';

import '../plugins/logger.dart'; // Path クラスを使用するために必要

void main() {
  final technicalSetting = TechnicalSetting();
  final children = <TechnicalChild>[];

  // Line インスタンス
  final line = Line(
    technicalSetting: technicalSetting,
    children: children,
  );
  line.result.add(1.0);
  logger.d(line.result); // [1.0]

  // Cloud インスタンス
  final cloud = Cloud(
    technicalSetting: technicalSetting,
    children: children,
  );
  cloud.result.add(Path());
  logger.d(cloud.result); // [Instance of 'Path']
}

class TechnicalSetting {}

class TechnicalChild {}

abstract class TechnicalChildEx<T> {
  TechnicalChildEx({
    required this.technicalSetting,
    required this.children,
  });

  final TechnicalSetting technicalSetting;
  final List<TechnicalChild> children;

  T get result;
}

class Line extends TechnicalChildEx<List<double>> {
  Line({
    required super.technicalSetting,
    required super.children,
  });

  // List<double> 型の result 変数
  final List<double> _result = [];

  @override
  List<double> get result => _result;
}

class Cloud extends TechnicalChildEx<List<Path>> {
  Cloud({
    required super.technicalSetting,
    required super.children,
  });

  // List<Path> 型の result 変数
  final List<Path> _result = [];

  @override
  List<Path> get result => _result;
}
