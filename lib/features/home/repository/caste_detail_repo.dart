import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/caste_details_model.dart';
import 'package:tmdbapp/features/home/repository/caste_detail_implementation.dart';

final casteRepoImplProvider = Provider<CasteRepo>((ref) {
  return CasteRepoImplementation(dioService: ref.read(dioServiceProvider));
});

abstract class CasteRepo {
  String path({required String movieId});
  Future<CasteDetailsModel> getCasteDetails({required String movieId});
}
