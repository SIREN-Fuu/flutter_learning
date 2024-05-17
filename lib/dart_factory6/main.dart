import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';

abstract class ITechnicalChildSetting {
  Color get color;
  bool get getValid;
}

@freezed
sealed class TechnicalChildSetting
    with _$TechnicalChildSetting
    implements ITechnicalChildSetting {
  @Implements<ITechnicalChildSetting>()
  const factory TechnicalChildSetting.line({
    required String displayName,
    required bool valid,
  }) = Line;

  @Implements<ITechnicalChildSetting>()
  const factory TechnicalChildSetting.cloud({
    required String displayName,
    required bool valid,
  }) = Cloud;
  const TechnicalChildSetting._(); // これは生成されたクラスの共通部分としての役割を果たす

  @override
  Color get color => when(
        line: (_, __) => Colors.blue,
        cloud: (_, __) => Colors.grey,
      );

  @override
  bool get getValid => when(
        line: (displayName, valid) => valid,
        cloud: (displayName, valid) => valid,
      );
}
