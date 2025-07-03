import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/constants/api_constants.dart';
import 'package:practice_demo01/src/features/users/domain/entities/user_entity.dart';

import '../model/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserEntity>> getUsers();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSourceImpl(this.dio);

  @override
  Future<List<UserEntity>> getUsers() async {
    final response = await dio.get(ApiConstants.getAllUser);

    if (response.statusCode! >= 200 && response.statusCode! <=210) {
      final List data = response.data;
      return data.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to fetch users");
    }
  }
}
