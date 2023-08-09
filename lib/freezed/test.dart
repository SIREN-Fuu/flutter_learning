import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

@freezed
class Freezed with _$Freezed {
  const factory Freezed({
    required String name,
    required String age,
  }) = _Freezed;
  const Freezed._();
}

@unfreezed
class Unfreezed with _$Unfreezed {
  factory Unfreezed({
    required String name,
    required String age,
  }) = _Unfreezed;
}
