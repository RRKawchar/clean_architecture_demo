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
import '../../features/product/domain/repositories/popular_product_repository.dart';
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



    final remoteDataSource = UserRemoteDataSourceImpl(dio);
    final userRepository = UserRepositoryImpl(remoteDataSource);
    final useCase = GetAllUsersUseCase(userRepository);
    final controller = UserController(useCase);
    Get.put(controller);


    final popularProductRemoteData = PopularProductRemoteDataSourceImpl(dio);
    final pRepo=PopularProductRepositoryImpl(popularProductRemoteData);
    final pUseCase=PopularProductUseCase(pRepo);
    final ppController=PopularProductController(pUseCase);
    Get.put(ppController);



  }
}
