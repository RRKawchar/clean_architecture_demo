import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';

abstract class AuthRepository{
  Future<LoginEntity> login(String email,String password);
  Future<void> register(RegistrationEntity user);
}