import 'package:practice_demo01/src/features/product/domain/repositories/popular_product_repository.dart';

import '../entities/popular_product_entity.dart';

class FakePopularProductRepository implements PopularProductRepository {
  @override
  Future<List<PopularProductEntity>> getPopularProduct() async {
    return [
      PopularProductEntity(
        id: 1,
        name: "Test Product",
        price: "200",
        regularPrice: "250",
        salePrice: "200",
        description: "Test Description",
        shortDescription: "Test Short",
        inStock: true,
        totalSales: 10,
        categories: [],
        images: [],
      ),
    ];
  }
}