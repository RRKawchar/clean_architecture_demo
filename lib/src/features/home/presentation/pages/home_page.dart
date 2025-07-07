import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/core/contracts/base_page_contract.dart';
import 'package:practice_demo01/src/core/mixins/page_logger.dart';
import 'package:practice_demo01/src/features/home/presentation/controller/home_controller.dart';

import '../../../../core/env/env.dart';

class HomePage extends StatefulWidget with PageLogger implements BasePageContract{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  void loadData() {
    print("Loading home data...");
  }
  @override
  String get pageTitle => "Home";
}

class _HomePageState extends State<HomePage> {


  final homeController=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {

     const named='';
    final int dd;
    dd=0;
   widget.logLifeCycle("Home Page");
   widget.loadData();
    return Scaffold(
      appBar: AppBar(title: Text("${widget.pageTitle} page")),
      body:SafeArea(
        child: Obx((){
          return ListView.builder(
            itemCount: homeController.productList.length,
            itemBuilder: (context, index) {
              final product = homeController.productList[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text(product.slug),
                leading: product.images?[0].src != null
                    ? Image.network(product.images![0].src, width: 50, height: 50)
                    : Icon(Icons.image_not_supported),
              );
            },
          );
        })
      ),
    );
  }
}
