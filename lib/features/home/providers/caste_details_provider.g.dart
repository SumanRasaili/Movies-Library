// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caste_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCasteDetailsHash() => r'a86e6104addcfaf5ab13f3108772b57681584833';

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

/// See also [getCasteDetails].
@ProviderFor(getCasteDetails)
const getCasteDetailsProvider = GetCasteDetailsFamily();

/// See also [getCasteDetails].
class GetCasteDetailsFamily extends Family<AsyncValue<CasteDetailsModel>> {
  /// See also [getCasteDetails].
  const GetCasteDetailsFamily();

  /// See also [getCasteDetails].
  GetCasteDetailsProvider call({
    required String movieId,
  }) {
    return GetCasteDetailsProvider(
      movieId: movieId,
    );
  }

  @override
  GetCasteDetailsProvider getProviderOverride(
    covariant GetCasteDetailsProvider provider,
  ) {
    return call(
      movieId: provider.movieId,
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
  String? get name => r'getCasteDetailsProvider';
}

/// See also [getCasteDetails].
class GetCasteDetailsProvider
    extends AutoDisposeFutureProvider<CasteDetailsModel> {
  /// See also [getCasteDetails].
  GetCasteDetailsProvider({
    required String movieId,
  }) : this._internal(
          (ref) => getCasteDetails(
            ref as GetCasteDetailsRef,
            movieId: movieId,
          ),
          from: getCasteDetailsProvider,
          name: r'getCasteDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCasteDetailsHash,
          dependencies: GetCasteDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetCasteDetailsFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  GetCasteDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieId,
  }) : super.internal();

  final String movieId;

  @override
  Override overrideWith(
    FutureOr<CasteDetailsModel> Function(GetCasteDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCasteDetailsProvider._internal(
        (ref) => create(ref as GetCasteDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieId: movieId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CasteDetailsModel> createElement() {
    return _GetCasteDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCasteDetailsProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCasteDetailsRef on AutoDisposeFutureProviderRef<CasteDetailsModel> {
  /// The parameter `movieId` of this provider.
  String get movieId;
}

class _GetCasteDetailsProviderElement
    extends AutoDisposeFutureProviderElement<CasteDetailsModel>
    with GetCasteDetailsRef {
  _GetCasteDetailsProviderElement(super.provider);

  @override
  String get movieId => (origin as GetCasteDetailsProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
