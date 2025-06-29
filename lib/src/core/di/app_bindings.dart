import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/presentation/controllers/login_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    final dio = Dio();
    final repository = AuthRepositoryImpl(dio);
    final loginUseCase = LoginUseCase(repository);
    Get.put(LoginController(loginUseCase));
  }
}
