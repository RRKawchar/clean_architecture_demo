// presentation/pages/products_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';

class ProductsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductController>();
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          final product = controller.products[index];
          return ListTile(
            leading: Image.network(product.images![0].src),
            title: Text(product.name),
            subtitle: Text(product.price ?? "No price"),
          );
        },
      )),
    );
  }
}