import 'package:practice_demo01/src/features/product/data/datasources/product_remote_data_source.dart';
import 'package:practice_demo01/src/features/product/domain/entities/popular_product_entity.dart';
import 'package:practice_demo01/src/features/product/domain/repositories/popular_product_repository.dart';
import 'package:practice_demo01/src/features/product/domain/usecases/get_product_usecase.dart';

class PopularProductRepositoryImpl extends PopularProductRepository{

  final PopularProductRemoteDataSource remoteDataSource;

  PopularProductRepositoryImpl(this.remoteDataSource);


  @override
  Future<List<PopularProductEntity>> getPopularProduct() async{
   return await remoteDataSource.getPopularProduct();
  }

}