import '../entities/popular_product_entity.dart';

abstract class PopularProductRepository {
  Future<List<PopularProductEntity>> getPopularProduct();
}