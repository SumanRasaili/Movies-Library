// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllMovieDetailsHash() =>
    r'854474a31395baa0a63271563c57d15f8d8e7d02';

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

/// See also [getAllMovieDetails].
@ProviderFor(getAllMovieDetails)
const getAllMovieDetailsProvider = GetAllMovieDetailsFamily();

/// See also [getAllMovieDetails].
class GetAllMovieDetailsFamily extends Family<AsyncValue<MovieDetails>> {
  /// See also [getAllMovieDetails].
  const GetAllMovieDetailsFamily();

  /// See also [getAllMovieDetails].
  GetAllMovieDetailsProvider call({
    required String movieId,
  }) {
    return GetAllMovieDetailsProvider(
      movieId: movieId,
    );
  }

  @override
  GetAllMovieDetailsProvider getProviderOverride(
    covariant GetAllMovieDetailsProvider provider,
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
  String? get name => r'getAllMovieDetailsProvider';
}

/// See also [getAllMovieDetails].
class GetAllMovieDetailsProvider
    extends AutoDisposeFutureProvider<MovieDetails> {
  /// See also [getAllMovieDetails].
  GetAllMovieDetailsProvider({
    required String movieId,
  }) : this._internal(
          (ref) => getAllMovieDetails(
            ref as GetAllMovieDetailsRef,
            movieId: movieId,
          ),
          from: getAllMovieDetailsProvider,
          name: r'getAllMovieDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAllMovieDetailsHash,
          dependencies: GetAllMovieDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetAllMovieDetailsFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  GetAllMovieDetailsProvider._internal(
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
    FutureOr<MovieDetails> Function(GetAllMovieDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAllMovieDetailsProvider._internal(
        (ref) => create(ref as GetAllMovieDetailsRef),
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
  AutoDisposeFutureProviderElement<MovieDetails> createElement() {
    return _GetAllMovieDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAllMovieDetailsProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAllMovieDetailsRef on AutoDisposeFutureProviderRef<MovieDetails> {
  /// The parameter `movieId` of this provider.
  String get movieId;
}

class _GetAllMovieDetailsProviderElement
    extends AutoDisposeFutureProviderElement<MovieDetails>
    with GetAllMovieDetailsRef {
  _GetAllMovieDetailsProviderElement(super.provider);

  @override
  String get movieId => (origin as GetAllMovieDetailsProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
