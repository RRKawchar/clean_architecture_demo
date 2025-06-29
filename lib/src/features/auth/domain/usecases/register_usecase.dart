import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase{
final AuthRepository authRepository;
RegisterUseCase(this.authRepository);

 Future<void> execute(RegistrationEntity user){
   return authRepository.register(user);
 }

}