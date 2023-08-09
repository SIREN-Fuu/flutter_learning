import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';

@freezed
class Freezed with _$Freezed {
  const factory Freezed({
    required String name,
    required int age,
    required List<String> lengthCounter,
  }) = _Freezed;
  const Freezed._();
}

@unfreezed
class Unfreezed with _$Unfreezed {
  factory Unfreezed({
    required String name,
    required int age,
    required List<String> lengthCounter,
    required NormalClass normalClass,
  }) = _Unfreezed;
}

class NormalClass {
  NormalClass({
    this.name = 'Mina',
    this.age = 30,
    this.lengthCounter = const ['a', 'b', 'c'],
  });
  String name;
  int age;
  List<String> lengthCounter;
}
