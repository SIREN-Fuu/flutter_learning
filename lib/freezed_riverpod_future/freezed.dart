import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    required String name,
    required int age,
    required List<String> lengthCounter,
    required int counter,
  }) = _AccountInfo;
  const AccountInfo._();
}
