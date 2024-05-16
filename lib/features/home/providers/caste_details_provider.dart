import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdbapp/features/home/models/caste_details_model.dart';
import 'package:tmdbapp/features/home/repository/caste_detail_repo.dart';

part 'caste_details_provider.g.dart';

@riverpod
Future<CasteDetailsModel> getCasteDetails(GetCasteDetailsRef ref,
    {required String movieId}) async {
  var d =
      await ref.read(casteRepoImplProvider).getCasteDetails(movieId: movieId);
  print("c===== ${d.cast}");
  return await ref
      .read(casteRepoImplProvider)
      .getCasteDetails(movieId: movieId);
}
