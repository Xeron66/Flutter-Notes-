import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_project/module_13/CRUD/model/product_model.dart';
import 'package:test_project/module_13/CRUD/utils/urls.dart';

class ProductController {

  static List<Data> products = [];
  static bool isLoading = false;

  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.ReadProduct));

    if(response.statusCode == 200) {
      isLoading = false;
      final data = jsonDecode(response.body);  // json to string

      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    }
  }

  static Future<bool> deleteProduct (String productId) async {
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> createProduct (Data data) async {
    final response = await http.post(Uri.parse(Urls.createProduct),
      headers: {
        "Content-Type": 'application/json'
      },
      body: jsonEncode(
        {
          "ProductName": data.productName,
          "ProductCode": DateTime.now().microsecondsSinceEpoch,
          "Img": data.img,
          "Qty": data.qty,
          "UnitPrice": data.unitPrice,
          "TotalPrice": data.totalPrice
        }
      ),
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }

  }

}