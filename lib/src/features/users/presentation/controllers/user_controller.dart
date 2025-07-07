import 'package:get/get.dart';
import 'package:practice_demo01/src/features/users/data/model/user_model.dart';

import '../../../../core/helper/helper_method.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/user_usecase.dart';

class UserController extends GetxController {
  final GetAllUsersUseCase getAllUsersUseCase;

  UserController(this.getAllUsersUseCase);

  var isLoading = false.obs;
  var userList = <UserEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading.value = true;
      final result = await getAllUsersUseCase();
      userList.value = result;
    } catch (e) {
      kPrint("Error fetching users: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
