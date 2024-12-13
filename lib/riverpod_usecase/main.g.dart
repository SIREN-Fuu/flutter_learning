// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testHash() => r'07373f0925ec3cdc92502c190b2104c21dfdae3a';

/// See also [test].
@ProviderFor(test)
final testProvider = AutoDisposeProvider<TestUsecase>.internal(
  test,
  name: r'testProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$testHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TestRef = AutoDisposeProviderRef<TestUsecase>;
String _$counterNotifierHash() => r'aa06071923bfd85bc77c1eda9e22981d1f235ab6';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    NotifierProvider<CounterNotifier, Counters>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = Notifier<Counters>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
