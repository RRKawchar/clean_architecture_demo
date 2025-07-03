import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_demo01/src/features/product/data/model/p_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<PModel>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;
  final String username;
  final String password;

  ProductRemoteDataSourceImpl({
    required this.dio,
    required this.username,
    required this.password,
  });

  @override
  Future<List<PModel>> getProducts() async {
    final response = await dio.get(
      'https://www.mffoodmart.com/wp-json/wc/v2/products?page=1&order_by=id&order=asc',
      options: Options(
        headers: {
          'Authorization':
          'Basic ${base64Encode(utf8.encode('$username:$password'))}'
        },
      ),
    );

    final List data = response.data;
    return data.map((json) => PModel.fromJson(json)).toList();
  }
}
