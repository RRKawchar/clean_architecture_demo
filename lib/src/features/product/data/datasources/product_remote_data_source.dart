// lib/features/products/data/datasources/product_remote_data_source.dart
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_demo01/src/features/product/data/model/p_model.dart';

import '../../../../core/error/exceptions.dart';

// abstract class ProductRemoteDataSource {
//   Future<List<Map<String, dynamic>>> getProducts(int page);
// }
//
// class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
//   final Dio dio;
//
//   ProductRemoteDataSourceImpl({required this.dio});
//
//   @override
//   Future<List<Map<String, dynamic>>> getProducts(int page) async {
//
//     const username='ck_389df1912d9d0be0541ee41dc1e3fcbfb367bbf9';
//     const password='cs_643aea4269872c4005d4a106676bcd07e96af983';
//
//     final response = await dio.get(
//       'https://www.mffoodmart.com/wp-json/wc/v2/products',
//       queryParameters: {'page': page},
//       options: Options(
//         headers: {
//           "Authorization":"Basic ${base64Encode(utf8.encode('$username:$password'))}"
//         }
//       )
//     );
//     return List<Map<String, dynamic>>.from(response.data);
//   }
// }



// data/datasources/product_remote_data_source.dart
abstract class ProductRemoteDataSource {
  Future<List<PModel>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<PModel>> getProducts() async {

    const username='ck_389df1912d9d0be0541ee41dc1e3fcbfb367bbf9';
    const password='cs_643aea4269872c4005d4a106676bcd07e96af983';

    final response = await dio.get(
      'https://www.mffoodmart.com/wp-json/wc/v2/products',
      options: Options(headers: {
        "Authorization": "Basic ${base64Encode(utf8.encode('$username:$password'))}"
      }),
    );

    if (response.statusCode == 200) {
      return (response.data as List)
          .map((json) => PModel.fromJson(json))
          .toList();
    }
    throw ServerExceptions();
  }
}