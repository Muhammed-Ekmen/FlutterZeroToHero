import 'package:http/http.dart' as http;

class AppBaseRequests {
  static Future<http.Response?> getRequest({required String path, Map<String, dynamic>? queryParameters}) async {
    try {
      Uri apiAdress = Uri.parse(path).replace(queryParameters: queryParameters);
      http.Response? response = await http.get(apiAdress);
      switch (response.statusCode) {
        case 200:
          return response;
        default:
          throw Exception();
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
