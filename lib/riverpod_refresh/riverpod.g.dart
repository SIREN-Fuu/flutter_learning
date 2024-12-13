// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$familyTestHash() => r'76d30d8147332007e7d602c0ac9fc4ff517e9bd4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FamilyTest extends BuildlessAutoDisposeNotifier<String> {
  late final bool arg;

  String build(
    bool arg,
  );
}

/// See also [FamilyTest].
@ProviderFor(FamilyTest)
const familyTestProvider = FamilyTestFamily();

/// See also [FamilyTest].
class FamilyTestFamily extends Family<String> {
  /// See also [FamilyTest].
  const FamilyTestFamily();

  /// See also [FamilyTest].
  FamilyTestProvider call(
    bool arg,
  ) {
    return FamilyTestProvider(
      arg,
    );
  }

  @override
  FamilyTestProvider getProviderOverride(
    covariant FamilyTestProvider provider,
  ) {
    return call(
      provider.arg,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'familyTestProvider';
}

/// See also [FamilyTest].
class FamilyTestProvider
    extends AutoDisposeNotifierProviderImpl<FamilyTest, String> {
  /// See also [FamilyTest].
  FamilyTestProvider(
    bool arg,
  ) : this._internal(
          () => FamilyTest()..arg = arg,
          from: familyTestProvider,
          name: r'familyTestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$familyTestHash,
          dependencies: FamilyTestFamily._dependencies,
          allTransitiveDependencies:
              FamilyTestFamily._allTransitiveDependencies,
          arg: arg,
        );

  FamilyTestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arg,
  }) : super.internal();

  final bool arg;

  @override
  String runNotifierBuild(
    covariant FamilyTest notifier,
  ) {
    return notifier.build(
      arg,
    );
  }

  @override
  Override overrideWith(FamilyTest Function() create) {
    return ProviderOverride(
      origin: this,
      override: FamilyTestProvider._internal(
        () => create()..arg = arg,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arg: arg,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FamilyTest, String> createElement() {
    return _FamilyTestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyTestProvider && other.arg == arg;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arg.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FamilyTestRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `arg` of this provider.
  bool get arg;
}

class _FamilyTestProviderElement
    extends AutoDisposeNotifierProviderElement<FamilyTest, String>
    with FamilyTestRef {
  _FamilyTestProviderElement(super.provider);

  @override
  bool get arg => (origin as FamilyTestProvider).arg;
}

String _$futureOrSampleHash() => r'73340f58b9cbecf6ad7ce8e8c2c4d6151f06db97';

/// See also [FutureOrSample].
@ProviderFor(FutureOrSample)
final futureOrSampleProvider =
    AsyncNotifierProvider<FutureOrSample, void>.internal(
  FutureOrSample.new,
  name: r'futureOrSampleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$futureOrSampleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FutureOrSample = AsyncNotifier<void>;
String _$futureSampleHash() => r'a6f5fcb119fbbf62301d3ba495df91f11bd8f6ac';

/// See also [FutureSample].
@ProviderFor(FutureSample)
final futureSampleProvider =
    AsyncNotifierProvider<FutureSample, String>.internal(
  FutureSample.new,
  name: r'futureSampleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$futureSampleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FutureSample = AsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
