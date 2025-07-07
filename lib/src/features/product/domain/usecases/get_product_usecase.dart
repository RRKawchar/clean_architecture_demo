import '../entities/popular_product_entity.dart';
import '../repositories/popular_product_repository.dart';

class PopularProductUseCase {
  final PopularProductRepository repository;

  PopularProductUseCase(this.repository);

  Future<List<PopularProductEntity>> call() async => repository.getPopularProduct();
}