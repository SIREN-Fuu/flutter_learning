// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_ex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreezedEx {
  String get text;
  String get name;
  int get age;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreezedExCopyWith<FreezedEx> get copyWith =>
      _$FreezedExCopyWithImpl<FreezedEx>(this as FreezedEx, _$identity);

  /// Serializes this FreezedEx to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreezedEx &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, name, age);

  @override
  String toString() {
    return 'FreezedEx(text: $text, name: $name, age: $age)';
  }
}

/// @nodoc
abstract mixin class $FreezedExCopyWith<$Res> {
  factory $FreezedExCopyWith(FreezedEx value, $Res Function(FreezedEx) _then) =
      _$FreezedExCopyWithImpl;
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class _$FreezedExCopyWithImpl<$Res> implements $FreezedExCopyWith<$Res> {
  _$FreezedExCopyWithImpl(this._self, this._then);

  final FreezedEx _self;
  final $Res Function(FreezedEx) _then;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FreezedEx extends FreezedEx {
  const _FreezedEx({this.text = '', this.name = '', this.age = 0}) : super._();
  factory _FreezedEx.fromJson(Map<String, dynamic> json) =>
      _$FreezedExFromJson(json);

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreezedExCopyWith<_FreezedEx> get copyWith =>
      __$FreezedExCopyWithImpl<_FreezedEx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FreezedExToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedEx &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, name, age);

  @override
  String toString() {
    return 'FreezedEx(text: $text, name: $name, age: $age)';
  }
}

/// @nodoc
abstract mixin class _$FreezedExCopyWith<$Res>
    implements $FreezedExCopyWith<$Res> {
  factory _$FreezedExCopyWith(
          _FreezedEx value, $Res Function(_FreezedEx) _then) =
      __$FreezedExCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class __$FreezedExCopyWithImpl<$Res> implements _$FreezedExCopyWith<$Res> {
  __$FreezedExCopyWithImpl(this._self, this._then);

  final _FreezedEx _self;
  final $Res Function(_FreezedEx) _then;

  /// Create a copy of FreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_FreezedEx(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UnfreezedEx {
  String get text;
  set text(String value);
  String get name;
  set name(String value);
  int get age;
  set age(int value);

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnfreezedExCopyWith<UnfreezedEx> get copyWith =>
      _$UnfreezedExCopyWithImpl<UnfreezedEx>(this as UnfreezedEx, _$identity);

  /// Serializes this UnfreezedEx to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UnfreezedEx(text: $text, name: $name, age: $age)';
  }
}

/// @nodoc
abstract mixin class $UnfreezedExCopyWith<$Res> {
  factory $UnfreezedExCopyWith(
          UnfreezedEx value, $Res Function(UnfreezedEx) _then) =
      _$UnfreezedExCopyWithImpl;
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class _$UnfreezedExCopyWithImpl<$Res> implements $UnfreezedExCopyWith<$Res> {
  _$UnfreezedExCopyWithImpl(this._self, this._then);

  final UnfreezedEx _self;
  final $Res Function(UnfreezedEx) _then;

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UnfreezedEx extends UnfreezedEx {
  _UnfreezedEx({this.text = '', this.name = '', this.age = 0}) : super._();
  factory _UnfreezedEx.fromJson(Map<String, dynamic> json) =>
      _$UnfreezedExFromJson(json);

  @override
  @JsonKey()
  String text;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  int age;

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnfreezedExCopyWith<_UnfreezedEx> get copyWith =>
      __$UnfreezedExCopyWithImpl<_UnfreezedEx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnfreezedExToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UnfreezedEx(text: $text, name: $name, age: $age)';
  }
}

/// @nodoc
abstract mixin class _$UnfreezedExCopyWith<$Res>
    implements $UnfreezedExCopyWith<$Res> {
  factory _$UnfreezedExCopyWith(
          _UnfreezedEx value, $Res Function(_UnfreezedEx) _then) =
      __$UnfreezedExCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String name, int age});
}

/// @nodoc
class __$UnfreezedExCopyWithImpl<$Res> implements _$UnfreezedExCopyWith<$Res> {
  __$UnfreezedExCopyWithImpl(this._self, this._then);

  final _UnfreezedEx _self;
  final $Res Function(_UnfreezedEx) _then;

  /// Create a copy of UnfreezedEx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_UnfreezedEx(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
