import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/features/home/models/caste_details_model.dart';
import 'package:tmdbapp/features/home/repository/caste_detail_repo.dart';

class CasteRepoImplementation implements CasteRepo {
  DioService dioService;
  CasteRepoImplementation({required this.dioService});
  @override
  Future<CasteDetailsModel> getCasteDetails({required String movieId}) async {
    final responseData = await dioService.getResponse(
        endpoint: AppConstants.baseUrl + path(movieId: movieId));
    print("The response data is === ${responseData.data}");
    return CasteDetailsModel.fromJson(responseData.data);
  }

  @override
  String path({required String movieId}) {
    return "/movie/$movieId/credits";
  }
}
