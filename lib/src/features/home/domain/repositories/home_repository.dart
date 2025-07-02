import 'package:practice_demo01/src/features/home/data/model/product_model.dart';


abstract class HomeRepository{
  Future<List<ProductModel>> getProduct();
}