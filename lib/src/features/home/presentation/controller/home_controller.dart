import 'package:get/get.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/home/domain/usecases/product_usecase.dart';

class HomeController extends GetxController{

  final ProductUseCase productUseCase;

  HomeController(this.productUseCase);

  var isLoading=false.obs;

  var productList=<ProductModel>[].obs;

  @override
  void onInit() {
      getProduct();
    super.onInit();
  }


  Future<void> getProduct()async{
    try{
      kPrint("get all data check33 :");
      isLoading.value=true;
       var response = await productUseCase.call();
      kPrint("get all data check33 : $response");
       productList.value=response;


       kPrint("get all data check : $response");
    } catch(e){
     kPrint("Error while fetching get product : $e");
    }finally{
      isLoading.value=false;
    }

  }



}