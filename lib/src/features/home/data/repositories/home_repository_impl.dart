import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/constants/api_constants.dart';
import 'package:practice_demo01/src/core/env/env.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/home/domain/repositories/home_repository.dart';


class HomeRepositoryImpl extends HomeRepository{
  final Dio dio;
  HomeRepositoryImpl(this.dio);

  @override
  Future<List<ProductModel>> getProduct() async{
    final response = await dio.get(ApiConstants.getProduct,options:Options(
        headers: {
          "Authorization":"Basic ${base64Encode(utf8.encode('${Env.userName}:${Env.userPass}'))}"
        }
    ));


    if (response.statusCode == 200 && response.data != null) {
      kPrint("Raw API response: ${response.data.runtimeType}");
      kPrint("Raw API data: ${response.data}");


      List data = response.data;
      return data.map((item) => ProductModel.fromJson(item)).toList();

    }


    else{
      throw Exception("Data fetch failed : ${response.statusCode}");
    }
  }

}