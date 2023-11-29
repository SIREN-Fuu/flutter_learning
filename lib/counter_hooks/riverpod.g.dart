// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'4de77757b294e15da063f721782ef89d3bd521a8';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = StreamNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = StreamNotifier<int>;
String _$counterManualHash() => r'7a7ef67af414c1553a04a4ab9bac104574cefe9f';

/// See also [CounterManual].
@ProviderFor(CounterManual)
final counterManualProvider = NotifierProvider<CounterManual, int>.internal(
  CounterManual.new,
  name: r'counterManualProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterManualHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterManual = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
