enum HttpMethod { get, post, put, patch, delete }

abstract class RequestService {
  Future<dynamic> sendAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson,
  });

  Future<dynamic> sendClearAsync({
    required HttpMethod method,
    required String url,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> queryParameters = const {},
    String? dataJson,
  });
}
