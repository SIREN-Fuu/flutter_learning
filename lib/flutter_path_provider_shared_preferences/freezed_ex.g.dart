// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'freezed_ex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreezedEx _$FreezedExFromJson(Map<String, dynamic> json) => _FreezedEx(
      text: json['text'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$FreezedExToJson(_FreezedEx instance) =>
    <String, dynamic>{
      'text': instance.text,
      'name': instance.name,
      'age': instance.age,
    };

_UnfreezedEx _$UnfreezedExFromJson(Map<String, dynamic> json) => _UnfreezedEx(
      text: json['text'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$UnfreezedExToJson(_UnfreezedEx instance) =>
    <String, dynamic>{
      'text': instance.text,
      'name': instance.name,
      'age': instance.age,
    };
