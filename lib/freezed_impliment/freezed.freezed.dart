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
  List<String> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedCopyWith<Freezed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedCopyWith<$Res> {
  factory $FreezedCopyWith(Freezed value, $Res Function(Freezed) then) =
      _$FreezedCopyWithImpl<$Res, Freezed>;
  @useResult
  $Res call({String name, int age, List<String> list});
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
    Object? list = null,
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
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, int age, List<String> list});
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
    Object? list = null,
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
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FreezedImpl extends _Freezed {
  const _$FreezedImpl(
      {required this.name, required this.age, required final List<String> list})
      : _list = list,
        super._();

  @override
  final String name;
  @override
  final int age;
  final List<String> _list;
  @override
  List<String> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'Freezed(name: $name, age: $age, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, age, const DeepCollectionEquality().hash(_list));

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
      required final List<String> list}) = _$FreezedImpl;
  const _Freezed._() : super._();

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get list;
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
  List<String> get list => throw _privateConstructorUsedError;
  set list(List<String> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnfreezedCopyWith<Unfreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfreezedCopyWith<$Res> {
  factory $UnfreezedCopyWith(Unfreezed value, $Res Function(Unfreezed) then) =
      _$UnfreezedCopyWithImpl<$Res, Unfreezed>;
  @useResult
  $Res call({String name, int age, List<String> list});
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
    Object? list = null,
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
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({String name, int age, List<String> list});
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
    Object? list = null,
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
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UnfreezedImpl implements _Unfreezed {
  _$UnfreezedImpl({required this.name, required this.age, required this.list});

  @override
  String name;
  @override
  int age;
  @override
  List<String> list;

  @override
  String toString() {
    return 'Unfreezed(name: $name, age: $age, list: $list)';
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
      required List<String> list}) = _$UnfreezedImpl;

  @override
  String get name;
  set name(String value);
  @override
  int get age;
  set age(int value);
  @override
  List<String> get list;
  set list(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$UnfreezedImplCopyWith<_$UnfreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExampleFactory {
  String get name => throw _privateConstructorUsedError;
  int get age =>
      throw _privateConstructorUsedError; // @ExcludeFunctionConverter<int>()
  int Function() get calc => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age, int Function() calc) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age, int Function() calc)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age, int Function() calc)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(City value) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(City value)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(City value)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleFactoryCopyWith<ExampleFactory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleFactoryCopyWith<$Res> {
  factory $ExampleFactoryCopyWith(
          ExampleFactory value, $Res Function(ExampleFactory) then) =
      _$ExampleFactoryCopyWithImpl<$Res, ExampleFactory>;
  @useResult
  $Res call({String name, int age, int Function() calc});
}

/// @nodoc
class _$ExampleFactoryCopyWithImpl<$Res, $Val extends ExampleFactory>
    implements $ExampleFactoryCopyWith<$Res> {
  _$ExampleFactoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? calc = null,
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
      calc: null == calc
          ? _value.calc
          : calc // ignore: cast_nullable_to_non_nullable
              as int Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res>
    implements $ExampleFactoryCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, int Function() calc});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$ExampleFactoryCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? calc = null,
  }) {
    return _then(_$CityImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      null == calc
          ? _value.calc
          : calc // ignore: cast_nullable_to_non_nullable
              as int Function(),
    ));
  }
}

/// @nodoc

class _$CityImpl implements City {
  _$CityImpl(this.name, this.age, this.calc);

  @override
  final String name;
  @override
  final int age;
// @ExcludeFunctionConverter<int>()
  @override
  final int Function() calc;

  @override
  String toString() {
    return 'ExampleFactory.city(name: $name, age: $age, calc: $calc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.calc, calc) || other.calc == calc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, calc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age, int Function() calc) city,
  }) {
    return city(name, age, calc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age, int Function() calc)? city,
  }) {
    return city?.call(name, age, calc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age, int Function() calc)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, age, calc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(City value) city,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(City value)? city,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(City value)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class City implements ExampleFactory, UserProfile {
  factory City(final String name, final int age, final int Function() calc) =
      _$CityImpl;

  @override
  String get name;
  @override
  int get age;
  @override // @ExcludeFunctionConverter<int>()
  int Function() get calc;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExampleFactoryEx _$ExampleFactoryExFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'cityEx':
      return CityEx.fromJson(json);
    case 'cityEx2':
      return CityEx2.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ExampleFactoryEx',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ExampleFactoryEx {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) cityEx,
    required TResult Function(String name, int age) cityEx2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? cityEx,
    TResult? Function(String name, int age)? cityEx2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? cityEx,
    TResult Function(String name, int age)? cityEx2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEx value) cityEx,
    required TResult Function(CityEx2 value) cityEx2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEx value)? cityEx,
    TResult? Function(CityEx2 value)? cityEx2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEx value)? cityEx,
    TResult Function(CityEx2 value)? cityEx2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleFactoryExCopyWith<ExampleFactoryEx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleFactoryExCopyWith<$Res> {
  factory $ExampleFactoryExCopyWith(
          ExampleFactoryEx value, $Res Function(ExampleFactoryEx) then) =
      _$ExampleFactoryExCopyWithImpl<$Res, ExampleFactoryEx>;
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class _$ExampleFactoryExCopyWithImpl<$Res, $Val extends ExampleFactoryEx>
    implements $ExampleFactoryExCopyWith<$Res> {
  _$ExampleFactoryExCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityExImplCopyWith<$Res>
    implements $ExampleFactoryExCopyWith<$Res> {
  factory _$$CityExImplCopyWith(
          _$CityExImpl value, $Res Function(_$CityExImpl) then) =
      __$$CityExImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$CityExImplCopyWithImpl<$Res>
    extends _$ExampleFactoryExCopyWithImpl<$Res, _$CityExImpl>
    implements _$$CityExImplCopyWith<$Res> {
  __$$CityExImplCopyWithImpl(
      _$CityExImpl _value, $Res Function(_$CityExImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$CityExImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityExImpl extends CityEx with CalcsEx {
  _$CityExImpl(this.name, this.age, {final String? $type})
      : $type = $type ?? 'cityEx',
        super._();

  factory _$CityExImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityExImplFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExampleFactoryEx.cityEx(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityExImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityExImplCopyWith<_$CityExImpl> get copyWith =>
      __$$CityExImplCopyWithImpl<_$CityExImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) cityEx,
    required TResult Function(String name, int age) cityEx2,
  }) {
    return cityEx(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? cityEx,
    TResult? Function(String name, int age)? cityEx2,
  }) {
    return cityEx?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? cityEx,
    TResult Function(String name, int age)? cityEx2,
    required TResult orElse(),
  }) {
    if (cityEx != null) {
      return cityEx(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEx value) cityEx,
    required TResult Function(CityEx2 value) cityEx2,
  }) {
    return cityEx(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEx value)? cityEx,
    TResult? Function(CityEx2 value)? cityEx2,
  }) {
    return cityEx?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEx value)? cityEx,
    TResult Function(CityEx2 value)? cityEx2,
    required TResult orElse(),
  }) {
    if (cityEx != null) {
      return cityEx(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CityExImplToJson(
      this,
    );
  }
}

abstract class CityEx extends ExampleFactoryEx
    implements UserProfileEx, CalcsEx {
  factory CityEx(final String name, final int age) = _$CityExImpl;
  CityEx._() : super._();

  factory CityEx.fromJson(Map<String, dynamic> json) = _$CityExImpl.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$CityExImplCopyWith<_$CityExImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityEx2ImplCopyWith<$Res>
    implements $ExampleFactoryExCopyWith<$Res> {
  factory _$$CityEx2ImplCopyWith(
          _$CityEx2Impl value, $Res Function(_$CityEx2Impl) then) =
      __$$CityEx2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$CityEx2ImplCopyWithImpl<$Res>
    extends _$ExampleFactoryExCopyWithImpl<$Res, _$CityEx2Impl>
    implements _$$CityEx2ImplCopyWith<$Res> {
  __$$CityEx2ImplCopyWithImpl(
      _$CityEx2Impl _value, $Res Function(_$CityEx2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$CityEx2Impl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityEx2Impl extends CityEx2 with CalcsEx {
  _$CityEx2Impl(this.name, this.age, {final String? $type})
      : $type = $type ?? 'cityEx2',
        super._();

  factory _$CityEx2Impl.fromJson(Map<String, dynamic> json) =>
      _$$CityEx2ImplFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ExampleFactoryEx.cityEx2(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEx2Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityEx2ImplCopyWith<_$CityEx2Impl> get copyWith =>
      __$$CityEx2ImplCopyWithImpl<_$CityEx2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) cityEx,
    required TResult Function(String name, int age) cityEx2,
  }) {
    return cityEx2(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? cityEx,
    TResult? Function(String name, int age)? cityEx2,
  }) {
    return cityEx2?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? cityEx,
    TResult Function(String name, int age)? cityEx2,
    required TResult orElse(),
  }) {
    if (cityEx2 != null) {
      return cityEx2(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityEx value) cityEx,
    required TResult Function(CityEx2 value) cityEx2,
  }) {
    return cityEx2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityEx value)? cityEx,
    TResult? Function(CityEx2 value)? cityEx2,
  }) {
    return cityEx2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityEx value)? cityEx,
    TResult Function(CityEx2 value)? cityEx2,
    required TResult orElse(),
  }) {
    if (cityEx2 != null) {
      return cityEx2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CityEx2ImplToJson(
      this,
    );
  }
}

abstract class CityEx2 extends ExampleFactoryEx implements CalcsEx {
  factory CityEx2(final String name, final int age) = _$CityEx2Impl;
  CityEx2._() : super._();

  factory CityEx2.fromJson(Map<String, dynamic> json) = _$CityEx2Impl.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$CityEx2ImplCopyWith<_$CityEx2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
