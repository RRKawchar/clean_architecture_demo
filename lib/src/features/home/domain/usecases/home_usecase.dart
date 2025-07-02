import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/home/domain/repositories/home_repository.dart';


class HomeUseCase{
  final HomeRepository productRepository;

  HomeUseCase(this.productRepository);

  Future<List<ProductModel>> call(){
    return productRepository.getProduct();
  }

}