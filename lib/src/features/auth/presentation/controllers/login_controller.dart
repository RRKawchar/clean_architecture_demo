import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/login_usecase.dart';

import '../../../home/presentation/home_page.dart';

class LoginController extends GetxController{
  LoginUseCase loginUseCase;
  LoginController(this.loginUseCase);


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

      await Future.delayed(const Duration(seconds: 1)); // Optional wait
      Get.offAll(() => const HomePage());

    } catch (e) {
      errorMessage.value = e.toString();
      Fluttertoast.showToast(msg:e.toString(),);
    } finally {
      isLoading.value = false;
    }
  }



}