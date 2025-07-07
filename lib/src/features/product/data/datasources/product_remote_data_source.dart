import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/constants/api_constants.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/product/domain/entities/popular_product_entity.dart';

import '../model/propular_product_model.dart';

abstract class PopularProductRemoteDataSource{
  Future<List<PopularProductEntity>> getPopularProduct();
}


class PopularProductRemoteDataSourceImpl extends PopularProductRemoteDataSource{
  final Dio _dio;
  PopularProductRemoteDataSourceImpl(this._dio);


  @override
  Future<List<PopularProductEntity>> getPopularProduct() async{

  const username='ck_389df1912d9d0be0541ee41dc1e3fcbfb367bbf9';
  const password='cs_643aea4269872c4005d4a106676bcd07e96af983';
     try{
       final response = await _dio.get(ApiConstants.getPopularProduct,options: Options(
        headers: {
        "Authorization":"Basic ${base64Encode(utf8.encode('$username:$password'))}"
        }
       ));

       List<dynamic> data =response.data;

       return data.map((e)=>PopularProductModel.fromJson(e)).toList();
     }catch(e){
       throw Exception(e.toString());
     }
  }
  
}