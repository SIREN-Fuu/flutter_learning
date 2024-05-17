// ignore_for_file: unreachable_from_main

import 'dart:ui'; // Path クラスを使用するために必要

class TechnicalSetting {}

class TechnicalChild {}

abstract class TechnicalChildEx {
  TechnicalChildEx._({
    required this.technicalSetting,
    required this.results,
  });

  factory TechnicalChildEx.line({
    required TechnicalSetting technicalSetting,
    required List<double> results,
  }) {
    return Line(
      technicalSetting: technicalSetting,
      results: results,
    );
  }

  factory TechnicalChildEx.cloud({
    required TechnicalSetting technicalSetting,
    required List<Path> results,
  }) {
    return Cloud(
      technicalSetting: technicalSetting,
      results: results,
    );
  }

  final TechnicalSetting technicalSetting;
  final List<TechnicalChild> results;
}

class Line extends TechnicalChildEx {
  Line({
    required super.technicalSetting,
    required super.results,
  }) : super._();

  // List<double> 型の result 変数
  final List<double> _result = [];
}

class Cloud extends TechnicalChildEx {
  Cloud({
    required super.technicalSetting,
    required super.results,
  }) : super._();

  // List<Path> 型の result 変数
  final List<Path> _result = [];

  @override
  List<Path> get result => _result;
}

void main() {
  final technicalSetting = TechnicalSetting();
  final children = <TechnicalChild>[];

  // Line インスタンス
  final line = TechnicalChildEx.line(
    technicalSetting: technicalSetting,
    results: results,
  );
  print(line.result); // [1.0]

  // Cloud インスタンス
  final cloud = TechnicalChildEx.cloud(
    technicalSetting: technicalSetting,
    results: results,
  );
  print(cloud.results); // [Instance of 'Path']
}
