// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

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
String _$simpleNotifierHash() => r'299fe1642cef568105a7ca9777a98191bc95d75b';

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
String _$futureOrNotifierHash() => r'7183af234d6b8c4da19deb881d2445f64f307937';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
