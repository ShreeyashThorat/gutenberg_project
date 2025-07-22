import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const Map<String, dynamic> defaultHEADERS = {
  "Content-Type": "application/json",
};

const String baseURL = "http://skunkworks.ignitesol.com:8000";

class Api {
  final Dio _dio = Dio();
  Api() {
    _dio.options.baseUrl = baseURL;
    _dio.options.headers = defaultHEADERS;
    _dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }

  Dio get sendRequest => _dio;
}
