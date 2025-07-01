import 'package:practice_demo01/src/features/home/data/model/product_model.dart';

import '../entities/product_entity.dart';

abstract class ProductRepositorys {
  Future<List<ProductEntity>> getProducts();

}