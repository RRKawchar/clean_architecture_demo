import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetProducts {
  final ProductRepositorys repository;

  GetProducts(this.repository);

  Future<List<ProductEntity>> call() async {
    return await repository.getProducts();
  }
}