import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
import 'package:practice_demo01/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:practice_demo01/src/features/auth/presentation/controllers/register_controller.dart';
import '../../../../core/routes/routes_name.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});


  // final registerController=Get.find<RegisterController>();
   final loginController=Get.find<AuthController>();

   final TextEditingController nameController=TextEditingController();
   final TextEditingController emailController=TextEditingController();
   final TextEditingController passwordController=TextEditingController();
   final TextEditingController phoneController=TextEditingController();
   final TextEditingController addressController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name"
              ),
            ),

            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Email"
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: "Password"
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  labelText: "Phone"
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  labelText: "Address"
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(

                onPressed: (){
                 final user=RegistrationEntity(
                     fullname: nameController.text,
                     email: emailController.text,
                     password: passwordController.text,
                     phone: phoneController.text,
                     dob: "01-03-1999",
                     gender: "Male",
                     address: addressController.text,
                     deviceToken: "",
                     resetToken: "",
                     status: 1,
                     image: ""
                 );

                 loginController.register(user);

            }, child: Obx(()=>loginController.isLoading.value?
            Center(child: CircularProgressIndicator(),):
            Text("Register"))),
            SizedBox(height: 15),
            Row(
              children: [
                Text("Already have an account?"),
                SizedBox(width: 8),
                InkWell(

                    onTap: (){
                      Get.offAllNamed(RoutesName.loginPage);
                    },

                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
