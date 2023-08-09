// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'4243b34530f53accfd9014a9f0e316fe304ada3e';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
String _$freezedCounterHash() => r'db06c1fc3bca82fb42227a3421758a4d467da428';

/// See also [FreezedCounter].
@ProviderFor(FreezedCounter)
final freezedCounterProvider =
    AutoDisposeNotifierProvider<FreezedCounter, Freezed>.internal(
  FreezedCounter.new,
  name: r'freezedCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$freezedCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FreezedCounter = AutoDisposeNotifier<Freezed>;
String _$unfreezedCounterHash() => r'38634c7d515f2b4a54ca58e08e32550f65b930ac';

/// See also [UnfreezedCounter].
@ProviderFor(UnfreezedCounter)
final unfreezedCounterProvider =
    AutoDisposeNotifierProvider<UnfreezedCounter, Unfreezed>.internal(
  UnfreezedCounter.new,
  name: r'unfreezedCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unfreezedCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UnfreezedCounter = AutoDisposeNotifier<Unfreezed>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
