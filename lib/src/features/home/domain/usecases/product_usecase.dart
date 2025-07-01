import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/home/domain/repositories/product_repository.dart';


class ProductUseCase{
  final ProductRepository productRepository;

  ProductUseCase(this.productRepository);

  Future<List<ProductModel>> call(){
    return productRepository.getProduct();
  }

}