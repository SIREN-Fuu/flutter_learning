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
  String get key;
  String get displayName;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsLinuxCopyWith<OsLinux> get copyWith =>
      _$OsLinuxCopyWithImpl<OsLinux>(this as OsLinux, _$identity);

  /// Serializes this OsLinux to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsLinux &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsLinux(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $OsLinuxCopyWith<$Res> {
  factory $OsLinuxCopyWith(OsLinux value, $Res Function(OsLinux) _then) =
      _$OsLinuxCopyWithImpl;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsLinuxCopyWithImpl<$Res> implements $OsLinuxCopyWith<$Res> {
  _$OsLinuxCopyWithImpl(this._self, this._then);

  final OsLinux _self;
  final $Res Function(OsLinux) _then;

  /// Create a copy of OsLinux
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
class Ubuntu extends OsLinux {
  Ubuntu(
      {this.key = 'Ubuntu-Key',
      this.displayName = 'Ubuntu',
      final String? $type})
      : $type = $type ?? 'ubuntu',
        super._();
  factory Ubuntu.fromJson(Map<String, dynamic> json) => _$UbuntuFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UbuntuCopyWith<Ubuntu> get copyWith =>
      _$UbuntuCopyWithImpl<Ubuntu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UbuntuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ubuntu &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsLinux.ubuntu(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $UbuntuCopyWith<$Res> implements $OsLinuxCopyWith<$Res> {
  factory $UbuntuCopyWith(Ubuntu value, $Res Function(Ubuntu) _then) =
      _$UbuntuCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$UbuntuCopyWithImpl<$Res> implements $UbuntuCopyWith<$Res> {
  _$UbuntuCopyWithImpl(this._self, this._then);

  final Ubuntu _self;
  final $Res Function(Ubuntu) _then;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(Ubuntu(
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
class RedHat extends OsLinux {
  RedHat(
      {this.key = 'RedHat-Key',
      this.displayName = 'RedHat',
      final String? $type})
      : $type = $type ?? 'redHat',
        super._();
  factory RedHat.fromJson(Map<String, dynamic> json) => _$RedHatFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RedHatCopyWith<RedHat> get copyWith =>
      _$RedHatCopyWithImpl<RedHat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RedHatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RedHat &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsLinux.redHat(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $RedHatCopyWith<$Res> implements $OsLinuxCopyWith<$Res> {
  factory $RedHatCopyWith(RedHat value, $Res Function(RedHat) _then) =
      _$RedHatCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$RedHatCopyWithImpl<$Res> implements $RedHatCopyWith<$Res> {
  _$RedHatCopyWithImpl(this._self, this._then);

  final RedHat _self;
  final $Res Function(RedHat) _then;

  /// Create a copy of OsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(RedHat(
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
