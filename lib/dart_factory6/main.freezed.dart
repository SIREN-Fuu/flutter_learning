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
mixin _$TechnicalChildSetting {
  String get displayName => throw _privateConstructorUsedError;
  bool get valid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, bool valid) line,
    required TResult Function(String displayName, bool valid) cloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, bool valid)? line,
    TResult? Function(String displayName, bool valid)? cloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, bool valid)? line,
    TResult Function(String displayName, bool valid)? cloud,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Line value) line,
    required TResult Function(Cloud value) cloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Line value)? line,
    TResult? Function(Cloud value)? cloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Line value)? line,
    TResult Function(Cloud value)? cloud,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TechnicalChildSettingCopyWith<TechnicalChildSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnicalChildSettingCopyWith<$Res> {
  factory $TechnicalChildSettingCopyWith(TechnicalChildSetting value,
          $Res Function(TechnicalChildSetting) then) =
      _$TechnicalChildSettingCopyWithImpl<$Res, TechnicalChildSetting>;
  @useResult
  $Res call({String displayName, bool valid});
}

/// @nodoc
class _$TechnicalChildSettingCopyWithImpl<$Res,
        $Val extends TechnicalChildSetting>
    implements $TechnicalChildSettingCopyWith<$Res> {
  _$TechnicalChildSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineImplCopyWith<$Res>
    implements $TechnicalChildSettingCopyWith<$Res> {
  factory _$$LineImplCopyWith(
          _$LineImpl value, $Res Function(_$LineImpl) then) =
      __$$LineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, bool valid});
}

/// @nodoc
class __$$LineImplCopyWithImpl<$Res>
    extends _$TechnicalChildSettingCopyWithImpl<$Res, _$LineImpl>
    implements _$$LineImplCopyWith<$Res> {
  __$$LineImplCopyWithImpl(_$LineImpl _value, $Res Function(_$LineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? valid = null,
  }) {
    return _then(_$LineImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LineImpl extends Line {
  const _$LineImpl({required this.displayName, required this.valid})
      : super._();

  @override
  final String displayName;
  @override
  final bool valid;

  @override
  String toString() {
    return 'TechnicalChildSetting.line(displayName: $displayName, valid: $valid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      __$$LineImplCopyWithImpl<_$LineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, bool valid) line,
    required TResult Function(String displayName, bool valid) cloud,
  }) {
    return line(displayName, valid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, bool valid)? line,
    TResult? Function(String displayName, bool valid)? cloud,
  }) {
    return line?.call(displayName, valid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, bool valid)? line,
    TResult Function(String displayName, bool valid)? cloud,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(displayName, valid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Line value) line,
    required TResult Function(Cloud value) cloud,
  }) {
    return line(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Line value)? line,
    TResult? Function(Cloud value)? cloud,
  }) {
    return line?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Line value)? line,
    TResult Function(Cloud value)? cloud,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(this);
    }
    return orElse();
  }
}

abstract class Line extends TechnicalChildSetting
    implements ITechnicalChildSetting {
  const factory Line(
      {required final String displayName,
      required final bool valid}) = _$LineImpl;
  const Line._() : super._();

  @override
  String get displayName;
  @override
  bool get valid;
  @override
  @JsonKey(ignore: true)
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloudImplCopyWith<$Res>
    implements $TechnicalChildSettingCopyWith<$Res> {
  factory _$$CloudImplCopyWith(
          _$CloudImpl value, $Res Function(_$CloudImpl) then) =
      __$$CloudImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, bool valid});
}

/// @nodoc
class __$$CloudImplCopyWithImpl<$Res>
    extends _$TechnicalChildSettingCopyWithImpl<$Res, _$CloudImpl>
    implements _$$CloudImplCopyWith<$Res> {
  __$$CloudImplCopyWithImpl(
      _$CloudImpl _value, $Res Function(_$CloudImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? valid = null,
  }) {
    return _then(_$CloudImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CloudImpl extends Cloud {
  const _$CloudImpl({required this.displayName, required this.valid})
      : super._();

  @override
  final String displayName;
  @override
  final bool valid;

  @override
  String toString() {
    return 'TechnicalChildSetting.cloud(displayName: $displayName, valid: $valid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudImplCopyWith<_$CloudImpl> get copyWith =>
      __$$CloudImplCopyWithImpl<_$CloudImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, bool valid) line,
    required TResult Function(String displayName, bool valid) cloud,
  }) {
    return cloud(displayName, valid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, bool valid)? line,
    TResult? Function(String displayName, bool valid)? cloud,
  }) {
    return cloud?.call(displayName, valid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, bool valid)? line,
    TResult Function(String displayName, bool valid)? cloud,
    required TResult orElse(),
  }) {
    if (cloud != null) {
      return cloud(displayName, valid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Line value) line,
    required TResult Function(Cloud value) cloud,
  }) {
    return cloud(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Line value)? line,
    TResult? Function(Cloud value)? cloud,
  }) {
    return cloud?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Line value)? line,
    TResult Function(Cloud value)? cloud,
    required TResult orElse(),
  }) {
    if (cloud != null) {
      return cloud(this);
    }
    return orElse();
  }
}

abstract class Cloud extends TechnicalChildSetting
    implements ITechnicalChildSetting {
  const factory Cloud(
      {required final String displayName,
      required final bool valid}) = _$CloudImpl;
  const Cloud._() : super._();

  @override
  String get displayName;
  @override
  bool get valid;
  @override
  @JsonKey(ignore: true)
  _$$CloudImplCopyWith<_$CloudImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
