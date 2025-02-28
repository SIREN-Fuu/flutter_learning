// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Counters {
  int get testInt;
  String get testString;
  List<int>? get testListInt;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountersCopyWith<Counters> get copyWith =>
      _$CountersCopyWithImpl<Counters>(this as Counters, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Counters &&
            (identical(other.testInt, testInt) || other.testInt == testInt) &&
            (identical(other.testString, testString) ||
                other.testString == testString) &&
            const DeepCollectionEquality()
                .equals(other.testListInt, testListInt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testInt, testString,
      const DeepCollectionEquality().hash(testListInt));

  @override
  String toString() {
    return 'Counters(testInt: $testInt, testString: $testString, testListInt: $testListInt)';
  }
}

/// @nodoc
abstract mixin class $CountersCopyWith<$Res> {
  factory $CountersCopyWith(Counters value, $Res Function(Counters) _then) =
      _$CountersCopyWithImpl;
  @useResult
  $Res call({int testInt, String testString, List<int>? testListInt});
}

/// @nodoc
class _$CountersCopyWithImpl<$Res> implements $CountersCopyWith<$Res> {
  _$CountersCopyWithImpl(this._self, this._then);

  final Counters _self;
  final $Res Function(Counters) _then;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testInt = null,
    Object? testString = null,
    Object? testListInt = freezed,
  }) {
    return _then(_self.copyWith(
      testInt: null == testInt
          ? _self.testInt
          : testInt // ignore: cast_nullable_to_non_nullable
              as int,
      testString: null == testString
          ? _self.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      testListInt: freezed == testListInt
          ? _self.testListInt
          : testListInt // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _Counters extends Counters {
  const _Counters(
      {this.testInt = 0, this.testString = '', final List<int>? testListInt})
      : _testListInt = testListInt,
        super._();

  @override
  @JsonKey()
  final int testInt;
  @override
  @JsonKey()
  final String testString;
  final List<int>? _testListInt;
  @override
  List<int>? get testListInt {
    final value = _testListInt;
    if (value == null) return null;
    if (_testListInt is EqualUnmodifiableListView) return _testListInt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountersCopyWith<_Counters> get copyWith =>
      __$CountersCopyWithImpl<_Counters>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Counters &&
            (identical(other.testInt, testInt) || other.testInt == testInt) &&
            (identical(other.testString, testString) ||
                other.testString == testString) &&
            const DeepCollectionEquality()
                .equals(other._testListInt, _testListInt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testInt, testString,
      const DeepCollectionEquality().hash(_testListInt));

  @override
  String toString() {
    return 'Counters(testInt: $testInt, testString: $testString, testListInt: $testListInt)';
  }
}

/// @nodoc
abstract mixin class _$CountersCopyWith<$Res>
    implements $CountersCopyWith<$Res> {
  factory _$CountersCopyWith(_Counters value, $Res Function(_Counters) _then) =
      __$CountersCopyWithImpl;
  @override
  @useResult
  $Res call({int testInt, String testString, List<int>? testListInt});
}

/// @nodoc
class __$CountersCopyWithImpl<$Res> implements _$CountersCopyWith<$Res> {
  __$CountersCopyWithImpl(this._self, this._then);

  final _Counters _self;
  final $Res Function(_Counters) _then;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? testInt = null,
    Object? testString = null,
    Object? testListInt = freezed,
  }) {
    return _then(_Counters(
      testInt: null == testInt
          ? _self.testInt
          : testInt // ignore: cast_nullable_to_non_nullable
              as int,
      testString: null == testString
          ? _self.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      testListInt: freezed == testListInt
          ? _self._testListInt
          : testListInt // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}
