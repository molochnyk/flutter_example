import 'dart:convert';
import 'package:dio/dio.dart';
import 'request_service.dart';

class DioRequestService implements RequestService {
  final Dio _dio = Dio();

  @override
  Future<dynamic> sendClearAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson,
  }) async {
    final options = Options(
      headers: {"Content-Type": "application/json", ...headers},
    );

    Response<dynamic> response;

    try {
      switch (method) {
        case HttpMethod.get:
          response = await _dio.get(
            url,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case HttpMethod.post:
          response = await _dio.post(
            url,
            data: dataJson,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case HttpMethod.put:
          response = await _dio.put(
            url,
            data: dataJson,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case HttpMethod.patch:
          response = await _dio.patch(
            url,
            data: dataJson,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case HttpMethod.delete:
          response = await _dio.delete(
            url,
            data: dataJson,
            options: options,
            queryParameters: queryParameters,
          );
          break;
      }
    } catch (e) {
      throw Exception("Network error: $e");
    }

    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      try {
        return response.data is String
            ? jsonDecode(response.data)
            : response.data;
      } catch (_) {
        return response.data;
      }
    }

    throw Exception('Request failed: ${response.statusCode}');
  }

  @override
  Future<dynamic> sendAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson,
  }) async {
    return sendClearAsync(
      method: method,
      url: url,
      headers: headers,
      queryParameters: queryParameters,
      dataJson: dataJson,
    );
  }
}
