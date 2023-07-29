import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  List<Product> Allproduct = [];

  Future<List<Product>> GetProduct() async {
    // Make the HTTP request

    http.Response response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    // Check the status code of the response
    if (response.statusCode == 200) {
      var result = Result.fromRawJson(response.body);

      var catgeroys = result.products.map((e) => e.category).toSet().toList();
      Allproduct = result.products;
      return result.products;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an error.
      throw Exception('Failed to load data');
    }
  }
}



