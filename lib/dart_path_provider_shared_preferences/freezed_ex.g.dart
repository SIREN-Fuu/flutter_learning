// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'freezed_ex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedExImpl _$$FreezedExImplFromJson(Map<String, dynamic> json) =>
    _$FreezedExImpl(
      text: json['text'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FreezedExImplToJson(_$FreezedExImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'name': instance.name,
      'age': instance.age,
    };

_$UnfreezedExImpl _$$UnfreezedExImplFromJson(Map<String, dynamic> json) =>
    _$UnfreezedExImpl(
      text: json['text'] as String? ?? '',
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UnfreezedExImplToJson(_$UnfreezedExImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'name': instance.name,
      'age': instance.age,
    };
