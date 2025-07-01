import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/features/dashboard/controller/dashboard_controller.dart';
import 'package:practice_demo01/src/features/home/presentation/pages/home_page.dart';
import 'package:practice_demo01/src/features/product/presentation/pages/product_page.dart';
import 'package:practice_demo01/src/features/users/presentation/pages/users_page.dart';

class DashBoard extends StatelessWidget {
   DashBoard({super.key});
  final DashboardController controller=Get.put(DashboardController());
  final _pages=[
    HomePage(),
    ProductsPage(),
    UsersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(()=>_pages[controller.currentPage.value]),

      bottomNavigationBar: Obx(()=>BottomNavigationBar(
          currentIndex: controller.currentPage.value,
          onTap: controller.onChangePage,
          selectedItemColor: Colors.green,
          selectedIconTheme: IconThemeData(
            size: 32
          ),
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add_chart_rounded),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),

          ]


      ),)
    );
  }
}
