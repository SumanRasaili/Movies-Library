// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllSimilarMoviesHash() =>
    r'038eb102c6915f37d9ef829398d87e33f0d75673';

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

/// See also [getAllSimilarMovies].
@ProviderFor(getAllSimilarMovies)
const getAllSimilarMoviesProvider = GetAllSimilarMoviesFamily();

/// See also [getAllSimilarMovies].
class GetAllSimilarMoviesFamily extends Family<AsyncValue<SimilarMovieModel>> {
  /// See also [getAllSimilarMovies].
  const GetAllSimilarMoviesFamily();

  /// See also [getAllSimilarMovies].
  GetAllSimilarMoviesProvider call({
    required String movieId,
  }) {
    return GetAllSimilarMoviesProvider(
      movieId: movieId,
    );
  }

  @override
  GetAllSimilarMoviesProvider getProviderOverride(
    covariant GetAllSimilarMoviesProvider provider,
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
  String? get name => r'getAllSimilarMoviesProvider';
}

/// See also [getAllSimilarMovies].
class GetAllSimilarMoviesProvider
    extends AutoDisposeFutureProvider<SimilarMovieModel> {
  /// See also [getAllSimilarMovies].
  GetAllSimilarMoviesProvider({
    required String movieId,
  }) : this._internal(
          (ref) => getAllSimilarMovies(
            ref as GetAllSimilarMoviesRef,
            movieId: movieId,
          ),
          from: getAllSimilarMoviesProvider,
          name: r'getAllSimilarMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAllSimilarMoviesHash,
          dependencies: GetAllSimilarMoviesFamily._dependencies,
          allTransitiveDependencies:
              GetAllSimilarMoviesFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  GetAllSimilarMoviesProvider._internal(
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
    FutureOr<SimilarMovieModel> Function(GetAllSimilarMoviesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAllSimilarMoviesProvider._internal(
        (ref) => create(ref as GetAllSimilarMoviesRef),
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
  AutoDisposeFutureProviderElement<SimilarMovieModel> createElement() {
    return _GetAllSimilarMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAllSimilarMoviesProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAllSimilarMoviesRef
    on AutoDisposeFutureProviderRef<SimilarMovieModel> {
  /// The parameter `movieId` of this provider.
  String get movieId;
}

class _GetAllSimilarMoviesProviderElement
    extends AutoDisposeFutureProviderElement<SimilarMovieModel>
    with GetAllSimilarMoviesRef {
  _GetAllSimilarMoviesProviderElement(super.provider);

  @override
  String get movieId => (origin as GetAllSimilarMoviesProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
