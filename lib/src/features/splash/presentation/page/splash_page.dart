import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/key_manager.dart';
import '../../../../core/routes/routes_name.dart';
import '../../../../core/services/local_storage_service.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    _checkAuth();

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  Future<void> _checkAuth() async {
    final storage = LocalStorageService.instance;
    final userId = storage.getData<int>(KeyManager.userId);

    await Future.delayed(const Duration(milliseconds: 1500));

    if (userId != null) {
      Get.offAllNamed(RoutesName.homePage);
    } else {
      Get.offAllNamed(RoutesName.loginPage);
    }
  }
}
