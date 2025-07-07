import 'package:practice_demo01/src/features/users/data/model/user_model.dart';

import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetAllUsersUseCase {
  final UserRepository repository;

  GetAllUsersUseCase(this.repository);

  Future<List<UserEntity>> call() {
    return repository.getUsers();
  }
}
