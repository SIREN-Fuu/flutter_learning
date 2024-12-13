import 'package:flutter/material.dart';

import '../plugins/logger.dart';

/// テクニカルライン Interface
abstract class ITechnicalChildSetting {
  Color get getColor;
  bool get getValid;
}

/// 基底クラス
abstract class TechnicalChildSetting implements ITechnicalChildSetting {
  TechnicalChildSetting({
    required this.displayName,
    required this.color,
    required this.valid,
  });

  /// Factory コンストラクタ
  factory TechnicalChildSetting.line({
    required String displayName,
    required Color color,
    required bool valid,
  }) = Line;

  factory TechnicalChildSetting.cloud({
    required String displayName,
    required Color color,
    required bool valid,
  }) = Cloud;
  final String displayName;
  final Color color;
  final bool valid;
}

/// Line クラスの具体的な実装
class Line extends TechnicalChildSetting {
  Line({
    required super.displayName,
    required super.color,
    required super.valid,
  });

  @override
  Color get getColor => super.color;

  @override
  bool get getValid => super.valid;
}

/// Cloud クラスの具体的な実装
class Cloud extends TechnicalChildSetting {
  Cloud({
    required super.displayName,
    required super.color,
    required super.valid,
  });

  @override
  Color get getColor => super.color;

  @override
  bool get getValid => super.valid;
}

void main() {
  final lineSetting = TechnicalChildSetting.line(
    displayName: 'Main Line',
    color: Colors.blue,
    valid: true,
  );

  final cloudSetting = TechnicalChildSetting.cloud(
    displayName: 'Cloud Area',
    color: Colors.grey,
    valid: false,
  );

  logger
    ..d('Line: ${lineSetting.displayName}, Color: ${lineSetting.getColor}, Valid: ${lineSetting.getValid}')
    ..d('Cloud: ${cloudSetting.displayName}, Color: ${cloudSetting.getColor}, Valid: ${cloudSetting.getValid}');
}
