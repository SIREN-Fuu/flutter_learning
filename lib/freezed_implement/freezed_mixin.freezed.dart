// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_mixin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OsWindows _$OsWindowsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'windows':
      return Windows.fromJson(json);
    case 'windowsNT':
      return WindowsNT.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OsWindows',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OsWindows {
  String get key => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this OsWindows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OsWindowsCopyWith<OsWindows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsWindowsCopyWith<$Res> {
  factory $OsWindowsCopyWith(OsWindows value, $Res Function(OsWindows) then) =
      _$OsWindowsCopyWithImpl<$Res, OsWindows>;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsWindowsCopyWithImpl<$Res, $Val extends OsWindows>
    implements $OsWindowsCopyWith<$Res> {
  _$OsWindowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OsWindows
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
abstract class _$$WindowsImplCopyWith<$Res>
    implements $OsWindowsCopyWith<$Res> {
  factory _$$WindowsImplCopyWith(
          _$WindowsImpl value, $Res Function(_$WindowsImpl) then) =
      __$$WindowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$WindowsImplCopyWithImpl<$Res>
    extends _$OsWindowsCopyWithImpl<$Res, _$WindowsImpl>
    implements _$$WindowsImplCopyWith<$Res> {
  __$$WindowsImplCopyWithImpl(
      _$WindowsImpl _value, $Res Function(_$WindowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$WindowsImpl(
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
class _$WindowsImpl extends Windows with Utility {
  _$WindowsImpl(
      {this.key = 'Windows-Key',
      this.displayName = 'Windows',
      final String? $type})
      : $type = $type ?? 'windows',
        super._();

  factory _$WindowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowsImplFromJson(json);

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
    return 'OsWindows.windows(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsImplCopyWith<_$WindowsImpl> get copyWith =>
      __$$WindowsImplCopyWithImpl<_$WindowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowsImplToJson(
      this,
    );
  }
}

abstract class Windows extends OsWindows implements Utility {
  factory Windows({final String key, final String displayName}) = _$WindowsImpl;
  Windows._() : super._();

  factory Windows.fromJson(Map<String, dynamic> json) = _$WindowsImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindowsImplCopyWith<_$WindowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WindowsNTImplCopyWith<$Res>
    implements $OsWindowsCopyWith<$Res> {
  factory _$$WindowsNTImplCopyWith(
          _$WindowsNTImpl value, $Res Function(_$WindowsNTImpl) then) =
      __$$WindowsNTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$WindowsNTImplCopyWithImpl<$Res>
    extends _$OsWindowsCopyWithImpl<$Res, _$WindowsNTImpl>
    implements _$$WindowsNTImplCopyWith<$Res> {
  __$$WindowsNTImplCopyWithImpl(
      _$WindowsNTImpl _value, $Res Function(_$WindowsNTImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$WindowsNTImpl(
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
class _$WindowsNTImpl extends WindowsNT with Utility {
  _$WindowsNTImpl(
      {this.key = 'WindowsNT-Key',
      this.displayName = 'WindowsNT',
      final String? $type})
      : $type = $type ?? 'windowsNT',
        super._();

  factory _$WindowsNTImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowsNTImplFromJson(json);

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
    return 'OsWindows.windowsNT(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsNTImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsNTImplCopyWith<_$WindowsNTImpl> get copyWith =>
      __$$WindowsNTImplCopyWithImpl<_$WindowsNTImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowsNTImplToJson(
      this,
    );
  }
}

abstract class WindowsNT extends OsWindows implements Utility {
  factory WindowsNT({final String key, final String displayName}) =
      _$WindowsNTImpl;
  WindowsNT._() : super._();

  factory WindowsNT.fromJson(Map<String, dynamic> json) =
      _$WindowsNTImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindowsNTImplCopyWith<_$WindowsNTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OsApple _$OsAppleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'macOS':
      return MacOS.fromJson(json);
    case 'iOS':
      return IOS.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OsApple',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OsApple {
  String get key => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this OsApple to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OsAppleCopyWith<OsApple> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsAppleCopyWith<$Res> {
  factory $OsAppleCopyWith(OsApple value, $Res Function(OsApple) then) =
      _$OsAppleCopyWithImpl<$Res, OsApple>;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsAppleCopyWithImpl<$Res, $Val extends OsApple>
    implements $OsAppleCopyWith<$Res> {
  _$OsAppleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OsApple
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
abstract class _$$MacOSImplCopyWith<$Res> implements $OsAppleCopyWith<$Res> {
  factory _$$MacOSImplCopyWith(
          _$MacOSImpl value, $Res Function(_$MacOSImpl) then) =
      __$$MacOSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$MacOSImplCopyWithImpl<$Res>
    extends _$OsAppleCopyWithImpl<$Res, _$MacOSImpl>
    implements _$$MacOSImplCopyWith<$Res> {
  __$$MacOSImplCopyWithImpl(
      _$MacOSImpl _value, $Res Function(_$MacOSImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$MacOSImpl(
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
class _$MacOSImpl extends MacOS {
  _$MacOSImpl(
      {this.key = 'macOS-Key', this.displayName = 'macOS', final String? $type})
      : $type = $type ?? 'macOS',
        super._();

  factory _$MacOSImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacOSImplFromJson(json);

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
    return 'OsApple.macOS(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacOSImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacOSImplCopyWith<_$MacOSImpl> get copyWith =>
      __$$MacOSImplCopyWithImpl<_$MacOSImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacOSImplToJson(
      this,
    );
  }
}

abstract class MacOS extends OsApple {
  factory MacOS({final String key, final String displayName}) = _$MacOSImpl;
  MacOS._() : super._();

  factory MacOS.fromJson(Map<String, dynamic> json) = _$MacOSImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacOSImplCopyWith<_$MacOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IOSImplCopyWith<$Res> implements $OsAppleCopyWith<$Res> {
  factory _$$IOSImplCopyWith(_$IOSImpl value, $Res Function(_$IOSImpl) then) =
      __$$IOSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$$IOSImplCopyWithImpl<$Res>
    extends _$OsAppleCopyWithImpl<$Res, _$IOSImpl>
    implements _$$IOSImplCopyWith<$Res> {
  __$$IOSImplCopyWithImpl(_$IOSImpl _value, $Res Function(_$IOSImpl) _then)
      : super(_value, _then);

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_$IOSImpl(
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
class _$IOSImpl extends IOS {
  _$IOSImpl(
      {this.key = 'iOS-Key', this.displayName = 'iOS', final String? $type})
      : $type = $type ?? 'iOS',
        super._();

  factory _$IOSImpl.fromJson(Map<String, dynamic> json) =>
      _$$IOSImplFromJson(json);

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
    return 'OsApple.iOS(key: $key, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IOSImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IOSImplCopyWith<_$IOSImpl> get copyWith =>
      __$$IOSImplCopyWithImpl<_$IOSImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IOSImplToJson(
      this,
    );
  }
}

abstract class IOS extends OsApple {
  factory IOS({final String key, final String displayName}) = _$IOSImpl;
  IOS._() : super._();

  factory IOS.fromJson(Map<String, dynamic> json) = _$IOSImpl.fromJson;

  @override
  String get key;
  @override
  String get displayName;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IOSImplCopyWith<_$IOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
