import 'package:http/http.dart' as http;

class ApiServices {

  final _client = http.Client();
  final _baseUrls = "sahinsafi.github.io";

  Future<http.Response> fetchHomeApi() {
    return _client.get(Uri.https(_baseUrls, "JsonHosting/ecom/home.json"));
  }

  Future<http.Response> fetchProductsApi(int page) {
    return _client.get(Uri.https(_baseUrls, "JsonHosting/ecom/products/$page.json"));
  }

}