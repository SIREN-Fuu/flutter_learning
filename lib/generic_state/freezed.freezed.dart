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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountInfoFreezed {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get favoriteFoods => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountInfoFreezedCopyWith<AccountInfoFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoFreezedCopyWith<$Res> {
  factory $AccountInfoFreezedCopyWith(
          AccountInfoFreezed value, $Res Function(AccountInfoFreezed) then) =
      _$AccountInfoFreezedCopyWithImpl<$Res, AccountInfoFreezed>;
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class _$AccountInfoFreezedCopyWithImpl<$Res, $Val extends AccountInfoFreezed>
    implements $AccountInfoFreezedCopyWith<$Res> {
  _$AccountInfoFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
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
      favoriteFoods: null == favoriteFoods
          ? _value.favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountInfoFreezedImplCopyWith<$Res>
    implements $AccountInfoFreezedCopyWith<$Res> {
  factory _$$AccountInfoFreezedImplCopyWith(_$AccountInfoFreezedImpl value,
          $Res Function(_$AccountInfoFreezedImpl) then) =
      __$$AccountInfoFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class __$$AccountInfoFreezedImplCopyWithImpl<$Res>
    extends _$AccountInfoFreezedCopyWithImpl<$Res, _$AccountInfoFreezedImpl>
    implements _$$AccountInfoFreezedImplCopyWith<$Res> {
  __$$AccountInfoFreezedImplCopyWithImpl(_$AccountInfoFreezedImpl _value,
      $Res Function(_$AccountInfoFreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
  }) {
    return _then(_$AccountInfoFreezedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteFoods: null == favoriteFoods
          ? _value._favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AccountInfoFreezedImpl extends _AccountInfoFreezed {
  const _$AccountInfoFreezedImpl(
      {required this.name,
      required this.age,
      required final List<String> favoriteFoods})
      : _favoriteFoods = favoriteFoods,
        super._();

  @override
  final String name;
  @override
  final int age;
  final List<String> _favoriteFoods;
  @override
  List<String> get favoriteFoods {
    if (_favoriteFoods is EqualUnmodifiableListView) return _favoriteFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteFoods);
  }

  @override
  String toString() {
    return 'AccountInfoFreezed(name: $name, age: $age, favoriteFoods: $favoriteFoods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInfoFreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._favoriteFoods, _favoriteFoods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age,
      const DeepCollectionEquality().hash(_favoriteFoods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoFreezedImplCopyWith<_$AccountInfoFreezedImpl> get copyWith =>
      __$$AccountInfoFreezedImplCopyWithImpl<_$AccountInfoFreezedImpl>(
          this, _$identity);
}

abstract class _AccountInfoFreezed extends AccountInfoFreezed {
  const factory _AccountInfoFreezed(
      {required final String name,
      required final int age,
      required final List<String> favoriteFoods}) = _$AccountInfoFreezedImpl;
  const _AccountInfoFreezed._() : super._();

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get favoriteFoods;
  @override
  @JsonKey(ignore: true)
  _$$AccountInfoFreezedImplCopyWith<_$AccountInfoFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountInfo {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get favoriteFoods => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountInfoCopyWith<AccountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoCopyWith<$Res> {
  factory $AccountInfoCopyWith(
          AccountInfo value, $Res Function(AccountInfo) then) =
      _$AccountInfoCopyWithImpl<$Res, AccountInfo>;
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class _$AccountInfoCopyWithImpl<$Res, $Val extends AccountInfo>
    implements $AccountInfoCopyWith<$Res> {
  _$AccountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
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
      favoriteFoods: null == favoriteFoods
          ? _value.favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountInfoImplCopyWith<$Res>
    implements $AccountInfoCopyWith<$Res> {
  factory _$$AccountInfoImplCopyWith(
          _$AccountInfoImpl value, $Res Function(_$AccountInfoImpl) then) =
      __$$AccountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class __$$AccountInfoImplCopyWithImpl<$Res>
    extends _$AccountInfoCopyWithImpl<$Res, _$AccountInfoImpl>
    implements _$$AccountInfoImplCopyWith<$Res> {
  __$$AccountInfoImplCopyWithImpl(
      _$AccountInfoImpl _value, $Res Function(_$AccountInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
  }) {
    return _then(_$AccountInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteFoods: null == favoriteFoods
          ? _value._favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AccountInfoImpl extends _AccountInfo {
  const _$AccountInfoImpl(
      {required this.name,
      required this.age,
      required final List<String> favoriteFoods})
      : _favoriteFoods = favoriteFoods,
        super._();

  @override
  final String name;
  @override
  final int age;
  final List<String> _favoriteFoods;
  @override
  List<String> get favoriteFoods {
    if (_favoriteFoods is EqualUnmodifiableListView) return _favoriteFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteFoods);
  }

  @override
  String toString() {
    return 'AccountInfo(name: $name, age: $age, favoriteFoods: $favoriteFoods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality()
                .equals(other._favoriteFoods, _favoriteFoods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age,
      const DeepCollectionEquality().hash(_favoriteFoods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoImplCopyWith<_$AccountInfoImpl> get copyWith =>
      __$$AccountInfoImplCopyWithImpl<_$AccountInfoImpl>(this, _$identity);
}

abstract class _AccountInfo extends AccountInfo {
  const factory _AccountInfo(
      {required final String name,
      required final int age,
      required final List<String> favoriteFoods}) = _$AccountInfoImpl;
  const _AccountInfo._() : super._();

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get favoriteFoods;
  @override
  @JsonKey(ignore: true)
  _$$AccountInfoImplCopyWith<_$AccountInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountInfoUnfreezed {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  set age(int value) => throw _privateConstructorUsedError;
  List<String> get favoriteFoods => throw _privateConstructorUsedError;
  set favoriteFoods(List<String> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountInfoUnfreezedCopyWith<AccountInfoUnfreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoUnfreezedCopyWith<$Res> {
  factory $AccountInfoUnfreezedCopyWith(AccountInfoUnfreezed value,
          $Res Function(AccountInfoUnfreezed) then) =
      _$AccountInfoUnfreezedCopyWithImpl<$Res, AccountInfoUnfreezed>;
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class _$AccountInfoUnfreezedCopyWithImpl<$Res,
        $Val extends AccountInfoUnfreezed>
    implements $AccountInfoUnfreezedCopyWith<$Res> {
  _$AccountInfoUnfreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
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
      favoriteFoods: null == favoriteFoods
          ? _value.favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountInfoUnfreezedImplCopyWith<$Res>
    implements $AccountInfoUnfreezedCopyWith<$Res> {
  factory _$$AccountInfoUnfreezedImplCopyWith(_$AccountInfoUnfreezedImpl value,
          $Res Function(_$AccountInfoUnfreezedImpl) then) =
      __$$AccountInfoUnfreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> favoriteFoods});
}

/// @nodoc
class __$$AccountInfoUnfreezedImplCopyWithImpl<$Res>
    extends _$AccountInfoUnfreezedCopyWithImpl<$Res, _$AccountInfoUnfreezedImpl>
    implements _$$AccountInfoUnfreezedImplCopyWith<$Res> {
  __$$AccountInfoUnfreezedImplCopyWithImpl(_$AccountInfoUnfreezedImpl _value,
      $Res Function(_$AccountInfoUnfreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? favoriteFoods = null,
  }) {
    return _then(_$AccountInfoUnfreezedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteFoods: null == favoriteFoods
          ? _value.favoriteFoods
          : favoriteFoods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AccountInfoUnfreezedImpl implements _AccountInfoUnfreezed {
  _$AccountInfoUnfreezedImpl(
      {required this.name, required this.age, required this.favoriteFoods});

  @override
  String name;
  @override
  int age;
  @override
  List<String> favoriteFoods;

  @override
  String toString() {
    return 'AccountInfoUnfreezed(name: $name, age: $age, favoriteFoods: $favoriteFoods)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoUnfreezedImplCopyWith<_$AccountInfoUnfreezedImpl>
      get copyWith =>
          __$$AccountInfoUnfreezedImplCopyWithImpl<_$AccountInfoUnfreezedImpl>(
              this, _$identity);
}

abstract class _AccountInfoUnfreezed implements AccountInfoUnfreezed {
  factory _AccountInfoUnfreezed(
      {required String name,
      required int age,
      required List<String> favoriteFoods}) = _$AccountInfoUnfreezedImpl;

  @override
  String get name;
  set name(String value);
  @override
  int get age;
  set age(int value);
  @override
  List<String> get favoriteFoods;
  set favoriteFoods(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$AccountInfoUnfreezedImplCopyWith<_$AccountInfoUnfreezedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
