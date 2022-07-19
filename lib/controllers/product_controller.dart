import 'package:get/get.dart';
import 'package:state_management_api_1/models/product_model.dart';
import 'package:state_management_api_1/server/product_server.dart';

class ProductController extends GetxController {
  var productlist = List<ProductModel>.empty().obs;
  @override
  void onInit() {
    fatchdata();
    super.onInit();
  }

  void fatchdata() async {
    var products = await ProductServer.fatchfromserver();
    if (products != null) {
      productlist.value = products;
    }
  }
}
