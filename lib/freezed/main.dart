import 'package:flutter/material.dart';

import 'freezed.dart';

void main() {
  const freezed = Freezed(name: 'Mina', age: '30');
  final freezed2 = freezed.copyWith(age: '31');
  debugPrint('${freezed2.name} ${freezed2.age}');

  final unfreezed = Unfreezed(name: 'Rina', age: '30');
  final unfreezed2 = unfreezed.copyWith(age: '29');
  debugPrint('${unfreezed2.name} ${unfreezed2.age}');

  final array1 = ['A', 'B', 'C'];
  final array2 = [...array1];
  final array3 = List.of(array1);
  array1[0] = 'X';
  array2[1] = 'Y';
  array3[2] = 'Z';
  debugPrint(array1[0] + array1[1] + array1[2]);
  debugPrint(array2[0] + array2[1] + array2[2]);
  debugPrint(array3[0] + array3[1] + array3[2]);

  // Shallow Copy Bad Case
  final array4 = [Sample('I', 1), Sample('J', 2), Sample('K', 3)];
  final array5 = [...array4];
  final array6 = List.of(array4);
  array4[0].text = 'X';
  array4[0].num = 9;
  array5[1].text = 'Y';
  array5[1].num = 8;
  array6[2].text = 'Z';
  array6[2].num = 7;
  debugPrint(array4[0].text + array4[1].text + array4[2].text);
  debugPrint(array5[0].text + array5[1].text + array5[2].text);
  debugPrint(array6[0].text + array6[1].text + array6[2].text);
  debugPrint(
    array4[0].num.toString() +
        array4[1].num.toString() +
        array4[2].num.toString(),
  );
  debugPrint(
    array5[0].num.toString() +
        array5[1].num.toString() +
        array5[2].num.toString(),
  );
  debugPrint(
    array6[0].num.toString() +
        array6[1].num.toString() +
        array6[2].num.toString(),
  );
}
