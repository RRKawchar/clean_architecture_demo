import 'package:practice_demo01/src/features/users/data/model/user_model.dart';

import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers();
}
