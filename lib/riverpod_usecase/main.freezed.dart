// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Counters {
  int get testInt => throw _privateConstructorUsedError;
  String get testString => throw _privateConstructorUsedError;
  List<int>? get testListInt => throw _privateConstructorUsedError;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountersCopyWith<Counters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountersCopyWith<$Res> {
  factory $CountersCopyWith(Counters value, $Res Function(Counters) then) =
      _$CountersCopyWithImpl<$Res, Counters>;
  @useResult
  $Res call({int testInt, String testString, List<int>? testListInt});
}

/// @nodoc
class _$CountersCopyWithImpl<$Res, $Val extends Counters>
    implements $CountersCopyWith<$Res> {
  _$CountersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testInt = null,
    Object? testString = null,
    Object? testListInt = freezed,
  }) {
    return _then(_value.copyWith(
      testInt: null == testInt
          ? _value.testInt
          : testInt // ignore: cast_nullable_to_non_nullable
              as int,
      testString: null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      testListInt: freezed == testListInt
          ? _value.testListInt
          : testListInt // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountersImplCopyWith<$Res>
    implements $CountersCopyWith<$Res> {
  factory _$$CountersImplCopyWith(
          _$CountersImpl value, $Res Function(_$CountersImpl) then) =
      __$$CountersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int testInt, String testString, List<int>? testListInt});
}

/// @nodoc
class __$$CountersImplCopyWithImpl<$Res>
    extends _$CountersCopyWithImpl<$Res, _$CountersImpl>
    implements _$$CountersImplCopyWith<$Res> {
  __$$CountersImplCopyWithImpl(
      _$CountersImpl _value, $Res Function(_$CountersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testInt = null,
    Object? testString = null,
    Object? testListInt = freezed,
  }) {
    return _then(_$CountersImpl(
      testInt: null == testInt
          ? _value.testInt
          : testInt // ignore: cast_nullable_to_non_nullable
              as int,
      testString: null == testString
          ? _value.testString
          : testString // ignore: cast_nullable_to_non_nullable
              as String,
      testListInt: freezed == testListInt
          ? _value._testListInt
          : testListInt // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$CountersImpl extends _Counters {
  const _$CountersImpl(
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

  @override
  String toString() {
    return 'Counters(testInt: $testInt, testString: $testString, testListInt: $testListInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountersImpl &&
            (identical(other.testInt, testInt) || other.testInt == testInt) &&
            (identical(other.testString, testString) ||
                other.testString == testString) &&
            const DeepCollectionEquality()
                .equals(other._testListInt, _testListInt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testInt, testString,
      const DeepCollectionEquality().hash(_testListInt));

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      __$$CountersImplCopyWithImpl<_$CountersImpl>(this, _$identity);
}

abstract class _Counters extends Counters {
  const factory _Counters(
      {final int testInt,
      final String testString,
      final List<int>? testListInt}) = _$CountersImpl;
  const _Counters._() : super._();

  @override
  int get testInt;
  @override
  String get testString;
  @override
  List<int>? get testListInt;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
