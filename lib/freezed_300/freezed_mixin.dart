// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_mixin.freezed.dart';
part 'freezed_mixin.g.dart';

@freezed
sealed class OsUbuntu with _$OsUbuntu {
  factory OsUbuntu({
    @Default('Ubuntu-Key') String key,
    @Default('Ubuntu') String displayName,
  }) = _OsUbuntu;

  OsUbuntu._();

  factory OsUbuntu.fromJson(Map<String, dynamic> json) =>
      _$OsUbuntuFromJson(json);

  String toStringEx() => json.encode(toJson());
}
