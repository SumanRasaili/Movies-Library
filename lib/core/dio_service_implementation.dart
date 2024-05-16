import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/config.dart';
import 'package:tmdbapp/core/dio_service.dart';

final dioServiceProvider = Provider<DioService>((ref) {
  return DioServiceImplementation();
});

class DioServiceImplementation extends DioService {
  final Dio _dio = Dio();
  @override
  Future<Response> getResponse(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    final response = await _dio.get(endpoint,
        queryParameters: queryParameters,
        options: Options(
            headers: {"Authorization": "Bearer ${AppConstants.token}"}));
    return response;
  }

  @override
  Future<Response> postRequest(
      {required String endpoint,
      required Map<String, dynamic> headers,
      required Map<String, dynamic> data}) async {
    final response =
        await _dio.post(endpoint, data: data, options: Options(headers: {}));
    return response.data;
  }
}
