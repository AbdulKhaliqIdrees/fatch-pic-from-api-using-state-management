import 'package:http/http.dart' as http;
import 'package:state_management_api_1/models/product_model.dart';

class ProductServer {
  static var client = http.Client();

  static Future<List<ProductModel>> fatchfromserver() async {
    var serverresponse = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (serverresponse.statusCode == 200) {
      var jasonString = serverresponse.body;
      return welcomeFromJson(jasonString);
    } else {
      return [];
    }
  }
}
