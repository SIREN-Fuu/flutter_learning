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
  String get key;
  String get displayName;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsWindowsCopyWith<OsWindows> get copyWith =>
      _$OsWindowsCopyWithImpl<OsWindows>(this as OsWindows, _$identity);

  /// Serializes this OsWindows to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsWindows &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsWindows(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $OsWindowsCopyWith<$Res> {
  factory $OsWindowsCopyWith(OsWindows value, $Res Function(OsWindows) _then) =
      _$OsWindowsCopyWithImpl;
  @useResult
  $Res call({String key, String displayName});
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
class Windows extends OsWindows with Utility {
  Windows(
      {this.key = 'Windows-Key',
      this.displayName = 'Windows',
      final String? $type})
      : $type = $type ?? 'windows',
        super._();
  factory Windows.fromJson(Map<String, dynamic> json) =>
      _$WindowsFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowsCopyWith<Windows> get copyWith =>
      _$WindowsCopyWithImpl<Windows>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Windows &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsWindows.windows(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $WindowsCopyWith<$Res>
    implements $OsWindowsCopyWith<$Res> {
  factory $WindowsCopyWith(Windows value, $Res Function(Windows) _then) =
      _$WindowsCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$WindowsCopyWithImpl<$Res> implements $WindowsCopyWith<$Res> {
  _$WindowsCopyWithImpl(this._self, this._then);

  final Windows _self;
  final $Res Function(Windows) _then;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(Windows(
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
class WindowsNT extends OsWindows with Utility {
  WindowsNT(
      {this.key = 'WindowsNT-Key',
      this.displayName = 'WindowsNT',
      final String? $type})
      : $type = $type ?? 'windowsNT',
        super._();
  factory WindowsNT.fromJson(Map<String, dynamic> json) =>
      _$WindowsNTFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowsNTCopyWith<WindowsNT> get copyWith =>
      _$WindowsNTCopyWithImpl<WindowsNT>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowsNTToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowsNT &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsWindows.windowsNT(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $WindowsNTCopyWith<$Res>
    implements $OsWindowsCopyWith<$Res> {
  factory $WindowsNTCopyWith(WindowsNT value, $Res Function(WindowsNT) _then) =
      _$WindowsNTCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$WindowsNTCopyWithImpl<$Res> implements $WindowsNTCopyWith<$Res> {
  _$WindowsNTCopyWithImpl(this._self, this._then);

  final WindowsNT _self;
  final $Res Function(WindowsNT) _then;

  /// Create a copy of OsWindows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(WindowsNT(
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
  String get key;
  String get displayName;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsAppleCopyWith<OsApple> get copyWith =>
      _$OsAppleCopyWithImpl<OsApple>(this as OsApple, _$identity);

  /// Serializes this OsApple to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsApple &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsApple(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $OsAppleCopyWith<$Res> {
  factory $OsAppleCopyWith(OsApple value, $Res Function(OsApple) _then) =
      _$OsAppleCopyWithImpl;
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$OsAppleCopyWithImpl<$Res> implements $OsAppleCopyWith<$Res> {
  _$OsAppleCopyWithImpl(this._self, this._then);

  final OsApple _self;
  final $Res Function(OsApple) _then;

  /// Create a copy of OsApple
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
class MacOS extends OsApple {
  MacOS(
      {this.key = 'macOS-Key', this.displayName = 'macOS', final String? $type})
      : $type = $type ?? 'macOS',
        super._();
  factory MacOS.fromJson(Map<String, dynamic> json) => _$MacOSFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MacOSCopyWith<MacOS> get copyWith =>
      _$MacOSCopyWithImpl<MacOS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MacOSToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MacOS &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsApple.macOS(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $MacOSCopyWith<$Res> implements $OsAppleCopyWith<$Res> {
  factory $MacOSCopyWith(MacOS value, $Res Function(MacOS) _then) =
      _$MacOSCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$MacOSCopyWithImpl<$Res> implements $MacOSCopyWith<$Res> {
  _$MacOSCopyWithImpl(this._self, this._then);

  final MacOS _self;
  final $Res Function(MacOS) _then;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(MacOS(
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
class IOS extends OsApple {
  IOS({this.key = 'iOS-Key', this.displayName = 'iOS', final String? $type})
      : $type = $type ?? 'iOS',
        super._();
  factory IOS.fromJson(Map<String, dynamic> json) => _$IOSFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String displayName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IOSCopyWith<IOS> get copyWith => _$IOSCopyWithImpl<IOS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IOSToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IOS &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, displayName);

  @override
  String toString() {
    return 'OsApple.iOS(key: $key, displayName: $displayName)';
  }
}

/// @nodoc
abstract mixin class $IOSCopyWith<$Res> implements $OsAppleCopyWith<$Res> {
  factory $IOSCopyWith(IOS value, $Res Function(IOS) _then) = _$IOSCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String displayName});
}

/// @nodoc
class _$IOSCopyWithImpl<$Res> implements $IOSCopyWith<$Res> {
  _$IOSCopyWithImpl(this._self, this._then);

  final IOS _self;
  final $Res Function(IOS) _then;

  /// Create a copy of OsApple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? displayName = null,
  }) {
    return _then(IOS(
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
