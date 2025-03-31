// ignore_for_file: invalid_annotation_target

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_mixin_default.freezed.dart';

@freezed
sealed class OsWindows with _$OsWindows {
  factory OsWindows({
    @Default('Ubuntu-Key') String key,
    @Default('Ubuntu') String displayName,
    @Default(Colors.red) Color displayName2,
  }) = _OsWindows;

  OsWindows._();

  // factory OsWindows.fromJson(Map<String, dynamic> json) =>
  //     _$OsWindowsFromJson(json);

  // String toStringEx() => json.encode(toJson());
}
