import 'package:get/get.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/product/domain/entities/popular_product_entity.dart';
import 'package:practice_demo01/src/features/product/domain/usecases/get_product_usecase.dart';

class PopularProductController extends GetxController {

  PopularProductUseCase useCase;
  PopularProductController(this.useCase);


  var isLoading=false.obs;
  var productList=<PopularProductEntity>[].obs;


  @override
  void onInit() {
    super.onInit();

    getPopularProduct();
  }



  Future<void> getPopularProduct()async{

    try{

      isLoading.value=true;
      final result=await useCase.call();
      productList.value=result;
    }catch(e){
      kPrint("Error while fetching popular product : $e");


    }finally{

      isLoading.value=false;

    }
  }



}