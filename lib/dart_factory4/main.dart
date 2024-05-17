import 'package:flutter/material.dart';

import '../plugins/logger.dart';

abstract class ITechnicalChildSetting {
  Color get color; // インターフェースで色を取得するゲッターを定義
  bool get getValid;
}

abstract class TechnicalChildSetting implements ITechnicalChildSetting {
  factory TechnicalChildSetting.line({
    required String displayName,
    required bool valid,
    required double brightnessFactor,
  }) = Line;

  factory TechnicalChildSetting.cloud({
    required String displayName,
    required bool valid,
    required Color baseColor,
  }) = Cloud;
  TechnicalChildSetting._({
    required this.displayName,
    required this.valid,
  });

  final String displayName;
  final bool valid;
}

class Line extends TechnicalChildSetting {
  Line({
    required super.displayName,
    required super.valid,
    required this.brightnessFactor,
  }) : super._();
  final double brightnessFactor;

  @override
  Color get color => Colors.blue.withOpacity(brightnessFactor);

  @override
  bool get getValid => valid;
}

class Cloud extends TechnicalChildSetting {
  Cloud({
    required super.displayName,
    required super.valid,
    required this.baseColor,
  }) : super._();
  final Color baseColor;

  @override
  Color get color => baseColor.withAlpha(150); // より透明度の高い色を返す

  @override
  bool get getValid => valid;
}

void main() {
  final lineSetting = TechnicalChildSetting.line(
    displayName: 'Main Line',
    brightnessFactor: 0.5,
    valid: true,
  );

  final cloudSetting = TechnicalChildSetting.cloud(
    displayName: 'Cloud Area',
    baseColor: Colors.grey,
    valid: false,
  );

  logger
    ..d('Line: ${lineSetting.displayName}, Color: ${lineSetting.color}, Valid: ${lineSetting.getValid}')
    ..d('Cloud: ${cloudSetting.displayName}, Color: ${cloudSetting.color}, Valid: ${cloudSetting.getValid}');
}
