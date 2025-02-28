// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_mixin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsUbuntu {
  String get key;
  String get displayName;

  /// Create a copy of OsUbuntu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsUbuntuCopyWith<OsUbuntu> get copyWith =>
      _$OsUbuntuCopyWithImpl<OsUbuntu>(this as OsUbuntu, _$identity);

  /// Serializes this OsUbuntu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsUbuntu &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsUbuntu(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $OsUbuntuCopyWith<$Res> {
  factory $OsUbuntuCopyWith(OsUbuntu value, $Res Function(OsUbuntu) _then) =
      _$OsUbuntuCopyWithImpl;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsUbuntuCopyWithImpl<$Res> implements $OsUbuntuCopyWith<$Res> {
  _$OsUbuntuCopyWithImpl(this._self, this._then);

  final OsUbuntu _self;
  final $Res Function(OsUbuntu) _then;

  /// Create a copy of OsUbuntu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OsUbuntu extends OsUbuntu {
  _OsUbuntu({this.key = 'Ubuntu-Key', this.displayName = 'Ubuntu'}) : super._();
  factory _OsUbuntu.fromJson(Map<String, dynamic> json) =>
      _$OsUbuntuFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  /// Create a copy of OsUbuntu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OsUbuntuCopyWith<_OsUbuntu> get copyWith =>
      __$OsUbuntuCopyWithImpl<_OsUbuntu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OsUbuntuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OsUbuntu &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsUbuntu(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class _$OsUbuntuCopyWith<$Res>
    implements $OsUbuntuCopyWith<$Res> {
  factory _$OsUbuntuCopyWith(_OsUbuntu value, $Res Function(_OsUbuntu) _then) =
      __$OsUbuntuCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class __$OsUbuntuCopyWithImpl<$Res> implements _$OsUbuntuCopyWith<$Res> {
  __$OsUbuntuCopyWithImpl(this._self, this._then);

  final _OsUbuntu _self;
  final $Res Function(_OsUbuntu) _then;

  /// Create a copy of OsUbuntu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(_OsUbuntu(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
