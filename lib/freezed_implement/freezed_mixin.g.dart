// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'freezed_mixin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WindowsImpl _$$WindowsImplFromJson(Map<String, dynamic> json) =>
    _$WindowsImpl(
      key: json['key'] as String? ?? 'Windows-Key',
      displayName: json['displayName'] as String? ?? 'Windows',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$$WindowsImplToJson(_$WindowsImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

_$WindowsNTImpl _$$WindowsNTImplFromJson(Map<String, dynamic> json) =>
    _$WindowsNTImpl(
      key: json['key'] as String? ?? 'WindowsNT-Key',
      displayName: json['displayName'] as String? ?? 'WindowsNT',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$$WindowsNTImplToJson(_$WindowsNTImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

_$MacOSImpl _$$MacOSImplFromJson(Map<String, dynamic> json) => _$MacOSImpl(
      key: json['key'] as String? ?? 'macOS-Key',
      displayName: json['displayName'] as String? ?? 'macOS',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$$MacOSImplToJson(_$MacOSImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

_$IOSImpl _$$IOSImplFromJson(Map<String, dynamic> json) => _$IOSImpl(
      key: json['key'] as String? ?? 'iOS-Key',
      displayName: json['displayName'] as String? ?? 'iOS',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$$IOSImplToJson(_$IOSImpl instance) => <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };
