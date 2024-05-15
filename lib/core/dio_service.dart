import 'package:dio/dio.dart';

abstract class DioService {
  Future<Response> getResponse(
      {required String endpoint, Map<String, dynamic>? queryParameters});

  Future<Response> postRequest(
      {required String endpoint,
      required Map<String, dynamic> headers,
      required Map<String, dynamic> data});
}
