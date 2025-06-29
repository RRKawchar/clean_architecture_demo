import 'package:get/get.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/usecases/register_usecase.dart';

class RegisterController extends GetxController{

  final RegisterUseCase registerUseCase;

  RegisterController(this.registerUseCase);

  Future<void> register(RegistrationEntity user) async {
    try {
      await registerUseCase.execute(user);
      // show success or navigate
    } catch (e) {
      print("Registration failed: $e");
    }
  }

}