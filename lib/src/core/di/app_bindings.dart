import 'package:get/get.dart';
import 'package:practice_demo01/src/core/services/network_module.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:practice_demo01/src/features/home/domain/usecases/home_usecase.dart';
import 'package:practice_demo01/src/features/home/presentation/controller/home_controller.dart';
import 'package:practice_demo01/src/features/product/data/datasources/product_remote_data_source.dart';
import 'package:practice_demo01/src/features/product/presentation/controller/product_controller.dart';
import 'package:practice_demo01/src/features/users/data/datasources/user_remote_data_source.dart';
import 'package:practice_demo01/src/features/users/data/repositories/user_repository_impl.dart';
import 'package:practice_demo01/src/features/users/domain/usecases/user_usecase.dart';
import 'package:practice_demo01/src/features/users/presentation/controllers/user_controller.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';
import '../../features/home/data/repositories/home_repository_impl.dart';
import '../../features/product/data/repositories/product_repository_impl.dart';
import '../../features/product/domain/repositories/product_repository.dart';
import '../../features/product/domain/usecases/get_product_usecase.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    final dio = NetworkModule.provideDio();
    final repository = AuthRepositoryImpl(dio);
    final loginUseCase = LoginUseCase(repository);
    final registerUseCase = RegisterUseCase(repository);
    Get.put(AuthController(loginUseCase, registerUseCase));
    final homeRepository = HomeRepositoryImpl(dio);
    final homeUseCase = HomeUseCase(homeRepository);
    Get.put(HomeController(homeUseCase));


    /// Product
    Get.lazyPut<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl(
      dio: dio,
      username: 'ck_389df1912d9d0be0541ee41dc1e3fcbfb367bbf9',
      password: 'cs_643aea4269872c4005d4a106676bcd07e96af983',
    ));
    Get.lazyPut(() =>
        ProductRepositoryImpl(Get.find<ProductRemoteDataSource>()));
    Get.lazyPut(() => GetProductsUseCase(Get.find<ProductRepositoryImpl>()));
    Get.lazyPut(() => ProductController(Get.find<GetProductsUseCase>()));

    /// Users
    // Get.lazyPut(()=>UserRepositoryImpl(Get.find<UserRemoteDataSource>()));
    // Get.lazyPut<UserRemoteDataSource>(()=>UserREmoteDataSourceImpl(dio));
    // Get.lazyPut(()=>UserUseCase(Get.find<UserRepositoryImpl>()));
    // Get.lazyPut(()=>UserController(Get.find<UserUseCase>()));


    final remoteDataSource = UserRemoteDataSourceImpl(dio);
    final userRepository = UserRepositoryImpl(remoteDataSource);
    final useCase = GetAllUsersUseCase(userRepository);
    final controller = UserController(useCase);

    Get.put(controller);



  }
}
