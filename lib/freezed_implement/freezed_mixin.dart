// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:core';

import 'package:flutter_learning/freezed_implement/freezed_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_mixin.freezed.dart';
part 'freezed_mixin.g.dart';

@freezed
class OsWindows with _$OsWindows implements Status {
  @With<Utility>()
  factory OsWindows.windows({
    @Default('Windows-Key') String key,
    @Default('Windows') String displayName,
  }) = Windows;

  @With<Utility>()
  factory OsWindows.windowsNT({
    @Default('WindowsNT-Key') String key,
    @Default('WindowsNT') String displayName,
  }) = WindowsNT;

  OsWindows._();

  factory OsWindows.fromJson(Map<String, dynamic> json) =>
      _$OsWindowsFromJson(json);

  String toStringEx() => json.encode(toJson());
}

@freezed
class OsApple with _$OsApple, Utility implements Status {
  factory OsApple.macOS({
    @Default('macOS-Key') String key,
    @Default('macOS') String displayName,
  }) = MacOS;

  factory OsApple.iOS({
    @Default('iOS-Key') String key,
    @Default('iOS') String displayName,
  }) = IOS;

  OsApple._();

  factory OsApple.fromJson(Map<String, dynamic> json) =>
      _$OsAppleFromJson(json);

  String toStringEx() => json.encode(toJson());
}
