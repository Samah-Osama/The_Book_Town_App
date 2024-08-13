import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  final String _baseurl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String url}) async {
    Response response = await dio.get(url);
    return response.data;
  }
}
