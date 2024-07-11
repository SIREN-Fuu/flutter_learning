import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';

@freezed
class AccountInfoFreezed with _$AccountInfoFreezed {
  const factory AccountInfoFreezed({
    required String name,
    required int age,
    required List<String> favoriteFoods,
  }) = _AccountInfoFreezed;
  const AccountInfoFreezed._();
}

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    required String name,
    required int age,
    required List<String> favoriteFoods,
  }) = _AccountInfo;
  const AccountInfo._();
}

@unfreezed
class AccountInfoUnfreezed with _$AccountInfoUnfreezed {
  factory AccountInfoUnfreezed({
    required String name,
    required int age,
    required List<String> favoriteFoods,
  }) = _AccountInfoUnfreezed;
}

class Sample {
  Sample(this.text, this.num);
  String text;
  int num;
}
