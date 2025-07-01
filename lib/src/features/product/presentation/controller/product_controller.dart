// presentation/controllers/product_controller.dart
import 'package:get/get.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_product_usecase.dart';

class ProductController extends GetxController {
  final GetProducts getProducts;
  final products = <ProductEntity>[].obs;
  final isLoading = false.obs;
  final error = RxString('');

  ProductController(this.getProducts);

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      final result = await getProducts();
      products.assignAll(result);
    } on ServerExceptions {
      error.value = 'Server error occurred';
    } catch (e) {
      error.value = 'Unexpected error: $e';
    } finally {
      isLoading.value = false;
    }
  }
}