// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_ex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreezedEx _$FreezedExFromJson(Map<String, dynamic> json) {
  return _FreezedEx.fromJson(json);
}

/// @nodoc
mixin _$FreezedEx {
  String get text => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  /// Serializes this FreezedEx to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreezedExCopyWith<FreezedEx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedExCopyWith<$Res> {
  factory $FreezedExCopyWith(FreezedEx value, $Res Function(FreezedEx) then) =
      _$FreezedExCopyWithImpl<$Res, FreezedEx>;
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class _$FreezedExCopyWithImpl<$Res, $Val extends FreezedEx>
    implements $FreezedExCopyWith<$Res> {
  _$FreezedExCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedExImplCopyWith<$Res>
    implements $FreezedExCopyWith<$Res> {
  factory _$$FreezedExImplCopyWith(
          _$FreezedExImpl value, $Res Function(_$FreezedExImpl) then) =
      __$$FreezedExImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class __$$FreezedExImplCopyWithImpl<$Res>
    extends _$FreezedExCopyWithImpl<$Res, _$FreezedExImpl>
    implements _$$FreezedExImplCopyWith<$Res> {
  __$$FreezedExImplCopyWithImpl(
      _$FreezedExImpl _value, $Res Function(_$FreezedExImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$FreezedExImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedExImpl extends _FreezedEx {
  const _$FreezedExImpl({this.text = '', this.name = '', this.age = 0})
      : super._();

  factory _$FreezedExImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedExImplFromJson(json);

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;

  @override
  String toString() {
    return 'FreezedEx(text: $text, name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedExImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, name, age);

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedExImplCopyWith<_$FreezedExImpl> get copyWith =>
      __$$FreezedExImplCopyWithImpl<_$FreezedExImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedExImplToJson(
      this,
    );
  }
}

abstract class _FreezedEx extends FreezedEx {
  const factory _FreezedEx(
      {final String text, final String name, final int age}) = _$FreezedExImpl;
  const _FreezedEx._() : super._();

  factory _FreezedEx.fromJson(Map<String, dynamic> json) =
      _$FreezedExImpl.fromJson;

  @override
  String get text;
  @override
  String get name;
  @override
  int get age;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreezedExImplCopyWith<_$FreezedExImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnfreezedEx _$UnfreezedExFromJson(Map<String, dynamic> json) {
  return _UnfreezedEx.fromJson(json);
}

/// @nodoc
mixin _$UnfreezedEx {
  String get text => throw _privateConstructorUsedError;
  set text(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  set age(int value) => throw _privateConstructorUsedError;

  /// Serializes this UnfreezedEx to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnfreezedExCopyWith<UnfreezedEx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfreezedExCopyWith<$Res> {
  factory $UnfreezedExCopyWith(
          UnfreezedEx value, $Res Function(UnfreezedEx) then) =
      _$UnfreezedExCopyWithImpl<$Res, UnfreezedEx>;
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class _$UnfreezedExCopyWithImpl<$Res, $Val extends UnfreezedEx>
    implements $UnfreezedExCopyWith<$Res> {
  _$UnfreezedExCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnfreezedExImplCopyWith<$Res>
    implements $UnfreezedExCopyWith<$Res> {
  factory _$$UnfreezedExImplCopyWith(
          _$UnfreezedExImpl value, $Res Function(_$UnfreezedExImpl) then) =
      __$$UnfreezedExImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class __$$UnfreezedExImplCopyWithImpl<$Res>
    extends _$UnfreezedExCopyWithImpl<$Res, _$UnfreezedExImpl>
    implements _$$UnfreezedExImplCopyWith<$Res> {
  __$$UnfreezedExImplCopyWithImpl(
      _$UnfreezedExImpl _value, $Res Function(_$UnfreezedExImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$UnfreezedExImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnfreezedExImpl extends _UnfreezedEx {
  _$UnfreezedExImpl({this.text = '', this.name = '', this.age = 0}) : super._();

  factory _$UnfreezedExImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnfreezedExImplFromJson(json);

  @override
  @JsonKey()
  String text;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  int age;

  @override
  String toString() {
    return 'UnfreezedEx(text: $text, name: $name, age: $age)';
  }

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnfreezedExImplCopyWith<_$UnfreezedExImpl> get copyWith =>
      __$$UnfreezedExImplCopyWithImpl<_$UnfreezedExImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnfreezedExImplToJson(
      this,
    );
  }
}

abstract class _UnfreezedEx extends UnfreezedEx {
  factory _UnfreezedEx({String text, String name, int age}) = _$UnfreezedExImpl;
  _UnfreezedEx._() : super._();

  factory _UnfreezedEx.fromJson(Map<String, dynamic> json) =
      _$UnfreezedExImpl.fromJson;

  @override
  String get text;
  set text(String value);
  @override
  String get name;
  set name(String value);
  @override
  int get age;
  set age(int value);

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnfreezedExImplCopyWith<_$UnfreezedExImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
