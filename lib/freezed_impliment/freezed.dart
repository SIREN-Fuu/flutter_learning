import 'dart:convert';
import 'dart:core';

import 'package:flutter_learning/plugins/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';
part 'freezed.g.dart';

@freezed
class Freezed with _$Freezed {
  const factory Freezed({
    required String name,
    required String age,
  }) = _Freezed;
  const Freezed._();
}

@unfreezed
class Unfreezed with _$Unfreezed {
  factory Unfreezed({
    required String name,
    required String age,
  }) = _Unfreezed;
}

//-------------------------------------------------------
// class ExcludeFunctionConverter<T> implements JsonConverter<T, Object?> {
//   const ExcludeFunctionConverter();

//   @override
//   T fromJson(Object? json) {
//     // ここでFunction型を除外するロジックを追加
//     if (json is Function) {
//       throw const FormatException('Function types are not allowed');
//     }

//     // 通常の変換ロジックを適用
//     return json as T;
//   }

//   @override
//   Object? toJson(T object) {
//     // 通常の変換ロジックを適用
//     return object;
//   }
// }

abstract class UserProfile {
  String get name;
  int get age;
  int Function() get calc;
}

@freezed
class ExampleFactory with _$ExampleFactory {
  @Implements<UserProfile>()
  factory ExampleFactory.city(
    String name,
    int age,
    // @ExcludeFunctionConverter<int>()
    int Function() calc,
  ) = City;

  // ！！！FunctionはJsonに変換できない！！！
  // factory ExampleFactory.fromJson(Map<String, dynamic> json) =>
  //     _$ExampleFactoryFromJson(json);
}

class Calcs {
  int calc() {
    logger.d('Calc');
    return 1;
  }
}

//-------------------------------------------------------

abstract class UserProfileEx {
  String get name;
  int get age;
  // int Function() get calc;
}

@freezed
class ExampleFactoryEx with _$ExampleFactoryEx {
  @Implements<UserProfileEx>()
  @With<CalcsEx>()
  factory ExampleFactoryEx.cityEx(
    String name,
    int age,
  ) = CityEx;
  @With<CalcsEx>()
  factory ExampleFactoryEx.cityEx2(
    String name,
    int age,
  ) = CityEx2;

  const ExampleFactoryEx._();

  factory ExampleFactoryEx.fromJson(Map<String, dynamic> json) =>
      _$ExampleFactoryExFromJson(json);

  String toStringEx() => json.encode(toJson());
}

mixin CalcsEx {
  int calc() {
    logger.d('Calc $runtimeType');
    return 1;
  }

  int calc2() {
    logger.d('Calc $runtimeType');
    return 1;
  }
}
