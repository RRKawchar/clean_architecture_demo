import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/core/routes/routes_name.dart';
import '../controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    final arg=Get.arguments;
    if(arg !=null && arg is Map){
      emailController.text=arg['email']??"";
      passwordController.text=arg['password']??"";
    }


    return Scaffold(
      appBar: AppBar(title: Text('Login')),
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

              SizedBox(height: 20),
              Row(
                children: [
                  Text("Don't have any account"),
                  SizedBox(width: 8),
                  InkWell(

                    onTap: (){
                      Get.offAllNamed(RoutesName.registerPage);
                    },

                      child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
