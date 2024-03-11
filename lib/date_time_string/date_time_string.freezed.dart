// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_time_string.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateTimeString {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateTimeStringCopyWith<DateTimeString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeStringCopyWith<$Res> {
  factory $DateTimeStringCopyWith(
          DateTimeString value, $Res Function(DateTimeString) then) =
      _$DateTimeStringCopyWithImpl<$Res, DateTimeString>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$DateTimeStringCopyWithImpl<$Res, $Val extends DateTimeString>
    implements $DateTimeStringCopyWith<$Res> {
  _$DateTimeStringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateTimeStringImplCopyWith<$Res>
    implements $DateTimeStringCopyWith<$Res> {
  factory _$$DateTimeStringImplCopyWith(_$DateTimeStringImpl value,
          $Res Function(_$DateTimeStringImpl) then) =
      __$$DateTimeStringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$DateTimeStringImplCopyWithImpl<$Res>
    extends _$DateTimeStringCopyWithImpl<$Res, _$DateTimeStringImpl>
    implements _$$DateTimeStringImplCopyWith<$Res> {
  __$$DateTimeStringImplCopyWithImpl(
      _$DateTimeStringImpl _value, $Res Function(_$DateTimeStringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DateTimeStringImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateTimeStringImpl extends _DateTimeString {
  const _$DateTimeStringImpl({this.value = '2000.01.01.01.01.01'}) : super._();

  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'DateTimeString(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeStringImplCopyWith<_$DateTimeStringImpl> get copyWith =>
      __$$DateTimeStringImplCopyWithImpl<_$DateTimeStringImpl>(
          this, _$identity);
}

abstract class _DateTimeString extends DateTimeString {
  const factory _DateTimeString({final String value}) = _$DateTimeStringImpl;
  const _DateTimeString._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$DateTimeStringImplCopyWith<_$DateTimeStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
