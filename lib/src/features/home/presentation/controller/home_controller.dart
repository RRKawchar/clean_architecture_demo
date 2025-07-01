import 'package:get/get.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';
import 'package:practice_demo01/src/features/home/data/model/product_model.dart';
import 'package:practice_demo01/src/features/home/domain/usecases/product_usecase.dart';


class HomeController extends GetxController{

  final ProductUseCase productUseCase;

  HomeController(this.productUseCase);

  var isLoading=false.obs;

  RxList<ProductModel> productList=<ProductModel>[].obs;

  @override
  void onInit() {
      getProduct();
    super.onInit();
  }


  Future<void> getProduct()async{
    try{
      isLoading.value=true;
       var response = await productUseCase.call();
        productList.value=response;
    } catch(e){
     kPrint("Error while fetching get product : $e");

    }finally{
      isLoading.value=false;
    }

  }



}