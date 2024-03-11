// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterAccessHash() => r'308c188f81ca1734828b330383643fb2bc664713';

/// See also [counterAccess].
@ProviderFor(counterAccess)
final counterAccessProvider = AutoDisposeProvider<CounterUsecase>.internal(
  counterAccess,
  name: r'counterAccessProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterAccessHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CounterAccessRef = AutoDisposeProviderRef<CounterUsecase>;
String _$counterNotifierHash() => r'063d02ac482f3e624ab77fe3f5068fb7f3a453d1';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AutoDisposeNotifierProvider<CounterNotifier, int>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
