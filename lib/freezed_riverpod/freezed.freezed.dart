// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Freezed {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get lengthCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedCopyWith<Freezed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedCopyWith<$Res> {
  factory $FreezedCopyWith(Freezed value, $Res Function(Freezed) then) =
      _$FreezedCopyWithImpl<$Res, Freezed>;
  @useResult
  $Res call({String name, int age, List<String> lengthCounter});
}

/// @nodoc
class _$FreezedCopyWithImpl<$Res, $Val extends Freezed>
    implements $FreezedCopyWith<$Res> {
  _$FreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? lengthCounter = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lengthCounter: null == lengthCounter
          ? _value.lengthCounter
          : lengthCounter // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedImplCopyWith<$Res> implements $FreezedCopyWith<$Res> {
  factory _$$FreezedImplCopyWith(
          _$FreezedImpl value, $Res Function(_$FreezedImpl) then) =
      __$$FreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> lengthCounter});
}

/// @nodoc
class __$$FreezedImplCopyWithImpl<$Res>
    extends _$FreezedCopyWithImpl<$Res, _$FreezedImpl>
    implements _$$FreezedImplCopyWith<$Res> {
  __$$FreezedImplCopyWithImpl(
      _$FreezedImpl _value, $Res Function(_$FreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? lengthCounter = null,
  }) {
    return _then(_$FreezedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lengthCounter: null == lengthCounter
          ? _value._lengthCounter
          : lengthCounter // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FreezedImpl extends _Freezed {
  const _$FreezedImpl(
      {required this.name,
      required this.age,
      required final List<String> lengthCounter})
      : _lengthCounter = lengthCounter,
        super._();

  @override
  final String name;
  @override
  final int age;
  final List<String> _lengthCounter;
  @override
  List<String> get lengthCounter {
    if (_lengthCounter is EqualUnmodifiableListView) return _lengthCounter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lengthCounter);
  }

  @override
  String toString() {
    return 'Freezed(name: $name, age: $age, lengthCounter: $lengthCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._lengthCounter, _lengthCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age,
      const DeepCollectionEquality().hash(_lengthCounter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedImplCopyWith<_$FreezedImpl> get copyWith =>
      __$$FreezedImplCopyWithImpl<_$FreezedImpl>(this, _$identity);
}

abstract class _Freezed extends Freezed {
  const factory _Freezed(
      {required final String name,
      required final int age,
      required final List<String> lengthCounter}) = _$FreezedImpl;
  const _Freezed._() : super._();

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get lengthCounter;
  @override
  @JsonKey(ignore: true)
  _$$FreezedImplCopyWith<_$FreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Unfreezed {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  set age(int value) => throw _privateConstructorUsedError;
  List<String> get lengthCounter => throw _privateConstructorUsedError;
  set lengthCounter(List<String> value) => throw _privateConstructorUsedError;
  NormalClass get normalClass => throw _privateConstructorUsedError;
  set normalClass(NormalClass value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnfreezedCopyWith<Unfreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfreezedCopyWith<$Res> {
  factory $UnfreezedCopyWith(Unfreezed value, $Res Function(Unfreezed) then) =
      _$UnfreezedCopyWithImpl<$Res, Unfreezed>;
  @useResult
  $Res call(
      {String name,
      int age,
      List<String> lengthCounter,
      NormalClass normalClass});
}

/// @nodoc
class _$UnfreezedCopyWithImpl<$Res, $Val extends Unfreezed>
    implements $UnfreezedCopyWith<$Res> {
  _$UnfreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? lengthCounter = null,
    Object? normalClass = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lengthCounter: null == lengthCounter
          ? _value.lengthCounter
          : lengthCounter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      normalClass: null == normalClass
          ? _value.normalClass
          : normalClass // ignore: cast_nullable_to_non_nullable
              as NormalClass,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnfreezedImplCopyWith<$Res>
    implements $UnfreezedCopyWith<$Res> {
  factory _$$UnfreezedImplCopyWith(
          _$UnfreezedImpl value, $Res Function(_$UnfreezedImpl) then) =
      __$$UnfreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int age,
      List<String> lengthCounter,
      NormalClass normalClass});
}

/// @nodoc
class __$$UnfreezedImplCopyWithImpl<$Res>
    extends _$UnfreezedCopyWithImpl<$Res, _$UnfreezedImpl>
    implements _$$UnfreezedImplCopyWith<$Res> {
  __$$UnfreezedImplCopyWithImpl(
      _$UnfreezedImpl _value, $Res Function(_$UnfreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? lengthCounter = null,
    Object? normalClass = null,
  }) {
    return _then(_$UnfreezedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lengthCounter: null == lengthCounter
          ? _value.lengthCounter
          : lengthCounter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      normalClass: null == normalClass
          ? _value.normalClass
          : normalClass // ignore: cast_nullable_to_non_nullable
              as NormalClass,
    ));
  }
}

/// @nodoc

class _$UnfreezedImpl implements _Unfreezed {
  _$UnfreezedImpl(
      {required this.name,
      required this.age,
      required this.lengthCounter,
      required this.normalClass});

  @override
  String name;
  @override
  int age;
  @override
  List<String> lengthCounter;
  @override
  NormalClass normalClass;

  @override
  String toString() {
    return 'Unfreezed(name: $name, age: $age, lengthCounter: $lengthCounter, normalClass: $normalClass)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnfreezedImplCopyWith<_$UnfreezedImpl> get copyWith =>
      __$$UnfreezedImplCopyWithImpl<_$UnfreezedImpl>(this, _$identity);
}

abstract class _Unfreezed implements Unfreezed {
  factory _Unfreezed(
      {required String name,
      required int age,
      required List<String> lengthCounter,
      required NormalClass normalClass}) = _$UnfreezedImpl;

  @override
  String get name;
  set name(String value);
  @override
  int get age;
  set age(int value);
  @override
  List<String> get lengthCounter;
  set lengthCounter(List<String> value);
  @override
  NormalClass get normalClass;
  set normalClass(NormalClass value);
  @override
  @JsonKey(ignore: true)
  _$$UnfreezedImplCopyWith<_$UnfreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
