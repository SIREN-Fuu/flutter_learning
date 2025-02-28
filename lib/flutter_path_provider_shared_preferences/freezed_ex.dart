import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_ex.freezed.dart';
part 'freezed_ex.g.dart';

@freezed
sealed class FreezedEx with _$FreezedEx {
  const factory FreezedEx({
    @Default('') String text,
    @Default('') String name,
    @Default(0) int age,
  }) = _FreezedEx;
  const FreezedEx._();

  // json形式で受け取るためのコードを生成するために記述
  factory FreezedEx.fromJson(Map<String, dynamic> json) =>
      _$FreezedExFromJson(json);

  factory FreezedEx.fromJsonEx(String jsonString) =>
      _$FreezedExFromJson(jsonDecode(jsonString) as Map<String, dynamic>);

  String toStringEx() => json.encode(toJson());
}

@unfreezed
sealed class UnfreezedEx with _$UnfreezedEx {
  factory UnfreezedEx({
    @Default('') String text,
    @Default('') String name,
    @Default(0) int age,
  }) = _UnfreezedEx;
  const UnfreezedEx._();

  // json形式で受け取るためのコードを生成するために記述
  factory UnfreezedEx.fromJson(Map<String, dynamic> json) =>
      _$UnfreezedExFromJson(json);

  factory UnfreezedEx.fromJsonEx(String jsonString) =>
      _$UnfreezedExFromJson(jsonDecode(jsonString) as Map<String, dynamic>);

  String toStringEx() => json.encode(toJson());
}

class SampleEx {
  SampleEx(this.text, this.name, this.age);
  String text;
  String name;
  int age;
}
