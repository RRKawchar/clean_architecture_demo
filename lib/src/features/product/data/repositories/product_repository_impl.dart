import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/product/data/mapper/product_mapper.dart';
import 'package:practice_demo01/src/features/product/domain/entities/product_entity.dart';

import '../../domain/repositories/product_repository.dart';
import '../datasources/product_remote_data_source.dart';
import '../model/p_model.dart';

// data/repositories/product_repository_impl.dart
class ProductRepositoryImpll implements ProductRepositorys {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpll({required this.remoteDataSource});

  @override
  Future<List<ProductEntity>> getProducts() async {
    final models = await remoteDataSource.getProducts();
    return models.map((model) => model.toEntity()).toList();
  }
}