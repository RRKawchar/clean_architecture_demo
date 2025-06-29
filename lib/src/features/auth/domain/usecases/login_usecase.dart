import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase{
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<LoginEntity> execute(String email,String password){
    return repository.login(email, password);
  }

}