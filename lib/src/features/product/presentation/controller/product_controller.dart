import 'package:get/get.dart';
import 'package:practice_demo01/src/features/product/domain/usecases/get_product_usecase.dart';

import '../../domain/entities/product_entity.dart';

class ProductController extends GetxController {
  final GetProductsUseCase getProducts;

  ProductController(this.getProducts);

  var products = <ProductEntity>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      final result = await getProducts();
      products.assignAll(result);
    } catch (e) {
      Get.snackbar("Error", "Failed to fetch products");
    } finally {
      isLoading(false);
    }
  }
}
