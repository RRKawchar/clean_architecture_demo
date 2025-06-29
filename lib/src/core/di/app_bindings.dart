import 'package:get/get.dart';
import 'package:practice_demo01/src/core/services/network_module.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:practice_demo01/src/features/auth/presentation/controllers/register_controller.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    final dio = NetworkModule.provideDio();
    final repository = AuthRepositoryImpl(dio);
    final loginUseCase = LoginUseCase(repository);
    final registerUseCase=RegisterUseCase(repository);
    Get.put(AuthController(loginUseCase,registerUseCase));
    //Get.put(RegisterController(registerUseCase));
  }
}
