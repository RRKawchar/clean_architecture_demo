import 'package:get/get.dart';

class DashboardController extends GetxController{

  var currentPage=0.obs;

  void onChangePage(int page){
    currentPage.value=page;
  }



}