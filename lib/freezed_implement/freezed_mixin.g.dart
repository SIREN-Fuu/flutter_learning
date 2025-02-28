// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'freezed_mixin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Windows _$WindowsFromJson(Map<String, dynamic> json) => Windows(
      key: json['key'] as String? ?? 'Windows-Key',
      displayName: json['displayName'] as String? ?? 'Windows',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$WindowsToJson(Windows instance) => <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

WindowsNT _$WindowsNTFromJson(Map<String, dynamic> json) => WindowsNT(
      key: json['key'] as String? ?? 'WindowsNT-Key',
      displayName: json['displayName'] as String? ?? 'WindowsNT',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$WindowsNTToJson(WindowsNT instance) => <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

MacOS _$MacOSFromJson(Map<String, dynamic> json) => MacOS(
      key: json['key'] as String? ?? 'macOS-Key',
      displayName: json['displayName'] as String? ?? 'macOS',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$MacOSToJson(MacOS instance) => <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };

IOS _$IOSFromJson(Map<String, dynamic> json) => IOS(
      key: json['key'] as String? ?? 'iOS-Key',
      displayName: json['displayName'] as String? ?? 'iOS',
      $type: json['runtimeType'] as String?,
    )..version = json['version'] as String;

Map<String, dynamic> _$IOSToJson(IOS instance) => <String, dynamic>{
      'version': instance.version,
      'key': instance.key,
      'displayName': instance.displayName,
      'runtimeType': instance.$type,
    };
