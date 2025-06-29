import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/core/di/app_bindings.dart';
import 'src/features/auth/presentation/pages/login_page.dart';

void main() {



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      initialBinding: InitialBinding(),
      home: LoginPage(),
    );
  }
}

