import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/constants/api_constants.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/product/domain/entities/popular_product_entity.dart';

import '../../../../core/env/env.dart';
import '../model/propular_product_model.dart';

abstract class PopularProductRemoteDataSource{
  Future<List<PopularProductEntity>> getPopularProduct();
}


class PopularProductRemoteDataSourceImpl extends PopularProductRemoteDataSource{
  final Dio _dio;
  PopularProductRemoteDataSourceImpl(this._dio);


  @override
  Future<List<PopularProductEntity>> getPopularProduct() async{

     try{
       final response = await _dio.get(ApiConstants.getPopularProduct,options: Options(
        headers: {
        "Authorization":"Basic ${base64Encode(utf8.encode('${Env.userName}:${Env.userPass}'))}"
        }
       ));

       List<dynamic> data =response.data;

       return data.map((e)=>PopularProductModel.fromJson(e)).toList();
     }catch(e){
       throw Exception(e.toString());
     }
  }
  
}