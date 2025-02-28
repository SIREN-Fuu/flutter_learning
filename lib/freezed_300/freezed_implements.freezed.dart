// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_implements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsRedHat {
// factory OsRedHat.fromJson(Map<String, dynamic> json) =>
//     _$OsRedHatFromJson(json);
  String get key;
  String get displayName;

  /// Create a copy of OsRedHat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsRedHatCopyWith<OsRedHat> get copyWith =>
      _$OsRedHatCopyWithImpl<OsRedHat>(this as OsRedHat, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsRedHat &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsRedHat(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $OsRedHatCopyWith<$Res> {
  factory $OsRedHatCopyWith(OsRedHat value, $Res Function(OsRedHat) _then) =
      _$OsRedHatCopyWithImpl;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsRedHatCopyWithImpl<$Res> implements $OsRedHatCopyWith<$Res> {
  _$OsRedHatCopyWithImpl(this._self, this._then);

  final OsRedHat _self;
  final $Res Function(OsRedHat) _then;

  /// Create a copy of OsRedHat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(OsRedHat(
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
