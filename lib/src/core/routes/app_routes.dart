import 'package:get/get.dart';
import 'package:practice_demo01/src/core/routes/routes_name.dart';
import 'package:practice_demo01/src/features/auth/presentation/pages/login_page.dart';
import 'package:practice_demo01/src/features/auth/presentation/pages/register_page.dart';
import 'package:practice_demo01/src/features/dashboard/presentation/page/dasboard.dart';
import 'package:practice_demo01/src/features/home/presentation/pages/home_page.dart';
import 'package:practice_demo01/src/features/splash/presentation/page/splash_page.dart';

class AppRoutes{


  static List<GetPage<dynamic>> routes=[

    GetPage(name: RoutesName.splashPage, page: ()=>SplashPage()),
    GetPage(name: RoutesName.dashBoard, page: ()=>DashBoard()),
    GetPage(name: RoutesName.homePage, page: ()=>HomePage()),
    GetPage(name: RoutesName.loginPage, page: ()=>LoginPage()),
    GetPage(name: RoutesName.registerPage, page: ()=>RegisterPage()),



  ];


}