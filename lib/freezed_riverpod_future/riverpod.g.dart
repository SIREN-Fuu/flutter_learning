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
String _$simpleNotifierHash() => r'a5a1321e512cfd41f2b7984c1d5c2c479562bbbe';

/// See also [SimpleNotifier].
@ProviderFor(SimpleNotifier)
final simpleNotifierProvider =
    AutoDisposeNotifierProvider<SimpleNotifier, AccountInfo>.internal(
  SimpleNotifier.new,
  name: r'simpleNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$simpleNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SimpleNotifier = AutoDisposeNotifier<AccountInfo>;
String _$futureOrNotifierHash() => r'24c430d87eff2337e36c16aae5a5611c20411c4a';

/// See also [FutureOrNotifier].
@ProviderFor(FutureOrNotifier)
final futureOrNotifierProvider =
    AutoDisposeAsyncNotifierProvider<FutureOrNotifier, AccountInfo>.internal(
  FutureOrNotifier.new,
  name: r'futureOrNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$futureOrNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FutureOrNotifier = AutoDisposeAsyncNotifier<AccountInfo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
