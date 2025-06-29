// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:practice_demo01/src/core/routes/routes_name.dart';
// import 'package:practice_demo01/src/features/auth/domain/entities/registration_entity.dart';
// import 'package:practice_demo01/src/features/auth/domain/usecases/register_usecase.dart';
// import 'package:practice_demo01/src/features/auth/presentation/pages/login_page.dart';
//
// class RegisterController extends GetxController{
//
//   final RegisterUseCase registerUseCase;
//
//   RegisterController(this.registerUseCase);
//
//
//   var isLoading=false.obs;
//
//
//   Future<void> register(RegistrationEntity user) async {
//     try {
//       isLoading.value=true;
//       await registerUseCase.execute(user);
//       Fluttertoast.showToast(msg: "Registration successful");
//       // show success or navigate
//       // Get.to(()=>LoginPage());
//       Get.offAllNamed(RoutesName.loginPage);
//     } catch (e) {
//       Fluttertoast.showToast(msg: e.toString());
//       print("Registration failed: $e");
//     }finally{
//       isLoading.value=false;
//     }
//   }
//
// }