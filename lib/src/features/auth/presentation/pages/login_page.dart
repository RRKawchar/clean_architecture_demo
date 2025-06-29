import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return Scaffold(
      appBar: AppBar(title: Text('Admin Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(
          () => Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              if (controller.errorMessage.isNotEmpty)
                Text(
                  controller.errorMessage.value,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 16),
              controller.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                    onPressed: () {
                      controller.login(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                      print("error message check lll : ${controller.errorMessage}");
                    },
                    child: Text('Login'),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
