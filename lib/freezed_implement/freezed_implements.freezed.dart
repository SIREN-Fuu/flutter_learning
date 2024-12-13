// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_implements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OsLinux _$OsLinuxFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'ubuntu':
      return Ubuntu.fromJson(json);
    case 'redHat':
      return RedHat.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OsLinux',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OsLinux {
  String get key => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this OsLinux to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OsLinuxCopyWith<OsLinux> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsLinuxCopyWith<$Res> {
  factory $OsLinuxCopyWith(OsLinux value, $Res Function(OsLinux) then) =
      _$OsLinuxCopyWithImpl<$Res, OsLinux>;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsLinuxCopyWithImpl<$Res, $Val extends OsLinux>
    implements $OsLinuxCopyWith<$Res> {
  _$OsLinuxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UbuntuImplCopyWith<$Res> implements $OsLinuxCopyWith<$Res> {
  factory _$$UbuntuImplCopyWith(
          _$UbuntuImpl value, $Res Function(_$UbuntuImpl) then) =
      __$$UbuntuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$UbuntuImplCopyWithImpl<$Res>
    extends _$OsLinuxCopyWithImpl<$Res, _$UbuntuImpl>
    implements _$$UbuntuImplCopyWith<$Res> {
  __$$UbuntuImplCopyWithImpl(
      _$UbuntuImpl _value, $Res Function(_$UbuntuImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$UbuntuImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UbuntuImpl extends Ubuntu {
  _$UbuntuImpl(
      {this.key = 'Ubuntu-Key',
      this.displayName = 'Ubuntu',
      final String? $type})
      : $type = $type ?? 'ubuntu',
        super._();

  factory _$UbuntuImpl.fromJson(Map<String, dynamic> json) =>
      _$$UbuntuImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OsLinux.ubuntu(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UbuntuImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UbuntuImplCopyWith<_$UbuntuImpl> get copyWith =>
      __$$UbuntuImplCopyWithImpl<_$UbuntuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UbuntuImplToJson(
      this,
    );
  }
}

abstract class Ubuntu extends OsLinux {
  factory Ubuntu({final String key, final String displayName}) = _$UbuntuImpl;
  Ubuntu._() : super._();

  factory Ubuntu.fromJson(Map<String, dynamic> json) = _$UbuntuImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UbuntuImplCopyWith<_$UbuntuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedHatImplCopyWith<$Res> implements $OsLinuxCopyWith<$Res> {
  factory _$$RedHatImplCopyWith(
          _$RedHatImpl value, $Res Function(_$RedHatImpl) then) =
      __$$RedHatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$RedHatImplCopyWithImpl<$Res>
    extends _$OsLinuxCopyWithImpl<$Res, _$RedHatImpl>
    implements _$$RedHatImplCopyWith<$Res> {
  __$$RedHatImplCopyWithImpl(
      _$RedHatImpl _value, $Res Function(_$RedHatImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$RedHatImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedHatImpl extends RedHat {
  _$RedHatImpl(
      {this.key = 'RedHat-Key',
      this.displayName = 'RedHat',
      final String? $type})
      : $type = $type ?? 'redHat',
        super._();

  factory _$RedHatImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedHatImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OsLinux.redHat(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedHatImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedHatImplCopyWith<_$RedHatImpl> get copyWith =>
      __$$RedHatImplCopyWithImpl<_$RedHatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedHatImplToJson(
      this,
    );
  }
}

abstract class RedHat extends OsLinux {
  factory RedHat({final String key, final String displayName}) = _$RedHatImpl;
  RedHat._() : super._();

  factory RedHat.fromJson(Map<String, dynamic> json) = _$RedHatImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedHatImplCopyWith<_$RedHatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
