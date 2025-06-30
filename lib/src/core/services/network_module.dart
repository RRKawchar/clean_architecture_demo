import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/env/env.dart';

class NetworkModule {
  static Dio provideDio() {
    final dio = Dio();

    // Optional: configure your Dio instance
    dio.options
      //..baseUrl = Env.baseUrl
      ..connectTimeout = const Duration(seconds: 10)
      ..receiveTimeout = const Duration(seconds: 10)
      ..headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

    // Add interceptors if needed (logging, auth etc.)
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ));

    return dio;
  }
}
