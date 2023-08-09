import 'package:flutter/material.dart';

import 'freezed.dart';

void main() {
  const freezed = Freezed(name: 'Mina', age: '30');
  final freezed2 = freezed.copyWith(age: '31');
  debugPrint('${freezed2.name} ${freezed2.age}');

  final unfreezed = Unfreezed(name: 'Rina', age: '30');
  final unfreezed2 = unfreezed.copyWith(age: '29');
  debugPrint('${unfreezed2.name} ${unfreezed2.age}');
}
