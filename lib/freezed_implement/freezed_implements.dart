// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:core';

import 'package:flutter_learning/freezed_implement/freezed_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_implements.freezed.dart';
part 'freezed_implements.g.dart';

@freezed
class OsLinux with _$OsLinux implements Status {
  factory OsLinux.ubuntu({
    @Default('Ubuntu-Key') String key,
    @Default('Ubuntu') String displayName,
  }) = Ubuntu;

  factory OsLinux.redHat({
    @Default('RedHat-Key') String key,
    @Default('RedHat') String displayName,
  }) = RedHat;

  OsLinux._();

  factory OsLinux.fromJson(Map<String, dynamic> json) =>
      _$OsLinuxFromJson(json);

  String toStringEx() => json.encode(toJson());
}
