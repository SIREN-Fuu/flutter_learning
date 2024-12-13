// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type, duplicate_ignore

part of 'usecases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initAppHash() => r'db00a4b8c47191f635773bef78b4d077fd07d6cd';

/// Init App
///
/// Copied from [initApp].
@ProviderFor(initApp)
final initAppProvider = Provider<InitAppUsecase>.internal(
  initApp,
  name: r'initAppProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$initAppHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InitAppRef = ProviderRef<InitAppUsecase>;
String _$addMemoHash() => r'4bccf9ff2a5c6ef5e6fc1cddf520091b51d604c4';

/// Add Memo
///
/// Copied from [addMemo].
@ProviderFor(addMemo)
final addMemoProvider = AutoDisposeProvider<AddMemoUsecase>.internal(
  addMemo,
  name: r'addMemoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addMemoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AddMemoRef = AutoDisposeProviderRef<AddMemoUsecase>;
String _$deleteMemoHash() => r'71f59c425ae45b3d8664975c92995e8315342e96';

/// Delete Memo
///
/// Copied from [deleteMemo].
@ProviderFor(deleteMemo)
final deleteMemoProvider = AutoDisposeProvider<DeleteMemoUsecase>.internal(
  deleteMemo,
  name: r'deleteMemoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deleteMemoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeleteMemoRef = AutoDisposeProviderRef<DeleteMemoUsecase>;
String _$updateMemoHash() => r'ab1148a80837f4691a4717f7da5ef9bfd429cccf';

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

/// Update Memo
///
/// Copied from [updateMemo].
@ProviderFor(updateMemo)
const updateMemoProvider = UpdateMemoFamily();

/// Update Memo
///
/// Copied from [updateMemo].
class UpdateMemoFamily extends Family<UpdateMemoUsecase> {
  /// Update Memo
  ///
  /// Copied from [updateMemo].
  const UpdateMemoFamily();

  /// Update Memo
  ///
  /// Copied from [updateMemo].
  UpdateMemoProvider call(
    String id,
  ) {
    return UpdateMemoProvider(
      id,
    );
  }

  @override
  UpdateMemoProvider getProviderOverride(
    covariant UpdateMemoProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'updateMemoProvider';
}

/// Update Memo
///
/// Copied from [updateMemo].
class UpdateMemoProvider extends AutoDisposeProvider<UpdateMemoUsecase> {
  /// Update Memo
  ///
  /// Copied from [updateMemo].
  UpdateMemoProvider(
    String id,
  ) : this._internal(
          (ref) => updateMemo(
            ref as UpdateMemoRef,
            id,
          ),
          from: updateMemoProvider,
          name: r'updateMemoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateMemoHash,
          dependencies: UpdateMemoFamily._dependencies,
          allTransitiveDependencies:
              UpdateMemoFamily._allTransitiveDependencies,
          id: id,
        );

  UpdateMemoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    UpdateMemoUsecase Function(UpdateMemoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateMemoProvider._internal(
        (ref) => create(ref as UpdateMemoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<UpdateMemoUsecase> createElement() {
    return _UpdateMemoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateMemoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateMemoRef on AutoDisposeProviderRef<UpdateMemoUsecase> {
  /// The parameter `id` of this provider.
  String get id;
}

class _UpdateMemoProviderElement
    extends AutoDisposeProviderElement<UpdateMemoUsecase> with UpdateMemoRef {
  _UpdateMemoProviderElement(super.provider);

  @override
  String get id => (origin as UpdateMemoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
