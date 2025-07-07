import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/features/users/presentation/controllers/user_controller.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: userController.userList.length,
          itemBuilder: (_, index) {
            final user = userController.userList[index];
            return ListTile(
              title: Text(user.fullname),
              subtitle: Text(user.email),
            );
          },
        );
      }),
    );
  }
}
