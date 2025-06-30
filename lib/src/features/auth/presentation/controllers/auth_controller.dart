import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:practice_demo01/src/core/constants/key_manager.dart';
import 'package:practice_demo01/src/core/routes/routes_name.dart';
import 'package:practice_demo01/src/core/services/local_storage_service.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/register_usecase.dart';

import '../../domain/entities/registration_entity.dart';


class AuthController extends GetxController{
  LoginUseCase loginUseCase;
  RegisterUseCase registerUseCase;
  AuthController(this.loginUseCase,this.registerUseCase);


  var isLoading=false.obs;

  var user=Rxn<LoginEntity>();

  var errorMessage=''.obs;


  Future<void> login(String email, String password) async {
    isLoading.value = true;
    errorMessage.value = '';

    try {
      final result = await loginUseCase.execute(email, password);

      user.value = result;

      Fluttertoast.showToast(msg:  "Login Successful");

      await Future.delayed(const Duration(seconds: 1));
      Get.offAllNamed(RoutesName.dashBoard);
      await LocalStorageService.instance.save(KeyManager.userId, result.id);
    } catch (e) {
      errorMessage.value = e.toString();
      Fluttertoast.showToast(msg:e.toString(),);
    } finally {
      isLoading.value = false;
    }
  }


  Future<void> register(RegistrationEntity user) async {
    try {
      isLoading.value=true;
      await registerUseCase.execute(user);
      Fluttertoast.showToast(msg: "Registration successful");
      Get.offAllNamed(RoutesName.loginPage,arguments: {
        'email':user.email,
        'password':user.password
      });
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print("Registration failed: $e");
    }finally{
      isLoading.value=false;
    }
  }



}