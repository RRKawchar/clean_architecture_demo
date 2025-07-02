// presentation/pages/products_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';

class ProductsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      // body: Obx(() {
      //   if (controller.isLoading.value) {
      //     return Center(child: CircularProgressIndicator());
      //   }
      //
      //   if (controller.error.value.isNotEmpty) {
      //     return Center(child: Text(controller.error.value));
      //   }
      //
      //   return ListView.builder(
      //     itemCount: controller.products.length,
      //     itemBuilder: (context, index) {
      //       final product = controller.products[index];
      //       return ListTile(
      //         title: Text(product.name),
      //         subtitle: Text('\$${product.price}'),
      //         leading: Image.network(product.imageUrl),
      //       );
      //     },
      //   );
      // }),
    );
  }
}