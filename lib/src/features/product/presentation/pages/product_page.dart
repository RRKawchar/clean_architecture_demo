// presentation/pages/products_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/features/product/data/datasources/product_remote_data_source.dart';
import 'package:practice_demo01/src/features/product/presentation/controller/product_controller.dart';
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});


  @override
  Widget build(BuildContext context) {

    final controller=Get.find<PopularProductController>();

    return Scaffold(
      appBar: AppBar(title: Text('Products')),


      body: Obx((){

        if(controller.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }

        return ListView.builder(
            itemCount: controller.productList.length,

            itemBuilder: (context,index){

              final item=controller.productList[index];
              return ListTile(
                leading: item.images != null && item.images!.isNotEmpty
                    ? Image.network(item.images!.first.src.toString(), width: 50, height: 50)
                    : const Icon(Icons.image),
                title:Text(item.name.toString()),
              );
            });
      })


    );
  }
}