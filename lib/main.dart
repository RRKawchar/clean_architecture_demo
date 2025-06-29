import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:practice_demo01/src/core/routes/app_routes.dart';
import 'package:practice_demo01/src/core/routes/routes_name.dart';
import 'src/core/di/app_bindings.dart';

void main()async{
await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Architecture demo',
      initialBinding: InitialBinding(),
      getPages: AppRoutes.routes,
      initialRoute: RoutesName.splashPage,
     // home: LoginPage(),
    );
  }
}




