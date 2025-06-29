import 'package:dio/dio.dart';
import 'package:practice_demo01/src/core/constants/api_constants.dart';
import 'package:practice_demo01/src/features/auth/data/models/auth_response.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository{
final Dio dio;

AuthRepositoryImpl(this.dio);

  @override
  Future<LoginEntity> login(String email, String password) async{
    final response = await dio.post(
     ApiConstants.login,
      data: {
        "email" : email,
        "password" : password
      }
    );

    print("Login Response: ${response.data}");

    if (response.statusCode == 200 || response.statusCode == 201) {
      final userModel = AuthResponse.fromJson(response.data);
      return userModel;
    } else {
      throw Exception("Login failed: ${response.data['message']}");
    }
  }

  @override
  Future<void> register(RegistrationEntity user) async{

    final response = await dio.post(
      ApiConstants.register,
      data: {
        "fullname": user.fullname,
        "email": user.email,
        "password": user.password,
        "phone": user.phone,
        "dob": user.dob,
        "gender": user.gender,
        "address": user.address,
        "device_token": user.deviceToken,
        "reset_token": user.resetToken,
        "status": 1,
        "image": user.image
      }
    );

    if(response.statusCode !=200 && response.statusCode !=210){
      throw Exception("Registration failed: ${response.data['message']}");
    }


  }


}