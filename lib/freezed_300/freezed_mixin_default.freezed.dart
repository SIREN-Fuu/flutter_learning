// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_mixin_default.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsWindows {
  String get key;
  String get displayName;
  Color get displayName2;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsWindowsCopyWith<OsWindows> get copyWith =>
      _$OsWindowsCopyWithImpl<OsWindows>(this as OsWindows, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsWindows &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayName2, displayName2) ||
                other.displayName2 == displayName2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, displayName, displayName2);

  @override
  String toString() {
    return 'OsWindows(key: $key, displayName: $displayName, displayName2: $displayName2)';
  }
}

/// @nodoc
abstract mixin class $OsWindowsCopyWith<$Res> {
  factory $OsWindowsCopyWith(OsWindows value, $Res Function(OsWindows) _then) =
      _$OsWindowsCopyWithImpl;
  @useResult
  $Res call({String key, String displayName, Color displayName2});
}

/// @nodoc
class _$OsWindowsCopyWithImpl<$Res> implements $OsWindowsCopyWith<$Res> {
  _$OsWindowsCopyWithImpl(this._self, this._then);

  final OsWindows _self;
  final $Res Function(OsWindows) _then;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
    Object? displayName2 = null,
  }) {
    return _then(_self.copyWith(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName2: null == displayName2
          ? _self.displayName2
          : displayName2 // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _OsWindows extends OsWindows {
  _OsWindows(
      {this.key = 'Ubuntu-Key',
      this.displayName = 'Ubuntu',
      this.displayName2 = Colors.red})
      : super._();

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final Color displayName2;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OsWindowsCopyWith<_OsWindows> get copyWith =>
      __$OsWindowsCopyWithImpl<_OsWindows>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OsWindows &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayName2, displayName2) ||
                other.displayName2 == displayName2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, displayName, displayName2);

  @override
  String toString() {
    return 'OsWindows(key: $key, displayName: $displayName, displayName2: $displayName2)';
  }
}

/// @nodoc
abstract mixin class _$OsWindowsCopyWith<$Res>
    implements $OsWindowsCopyWith<$Res> {
  factory _$OsWindowsCopyWith(
          _OsWindows value, $Res Function(_OsWindows) _then) =
      __$OsWindowsCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName, Color displayName2});
}

/// @nodoc
class __$OsWindowsCopyWithImpl<$Res> implements _$OsWindowsCopyWith<$Res> {
  __$OsWindowsCopyWithImpl(this._self, this._then);

  final _OsWindows _self;
  final $Res Function(_OsWindows) _then;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
    Object? displayName2 = null,
  }) {
    return _then(_OsWindows(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName2: null == displayName2
          ? _self.displayName2
          : displayName2 // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}
