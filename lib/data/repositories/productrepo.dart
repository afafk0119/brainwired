import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vinnovatetest/data/models/productmodel.dart';

class ProductRepository {
  final String _apiUrl = 'https://my-store.in/v2/products/api/getProductsList';
  final String _appId = '2IPbyrCUM7s5JZhnB9fxFAD6';
  Future<List<Product>> fetchProducts(int page) async {
    final response = await http.post(
      Uri.parse(_apiUrl),
      headers: {'appid': _appId},
      body: {'page': page.toString()},
      encoding: Encoding.getByName('x-www-form-urlencoded'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['success']) {
        final List<dynamic> productList = data['list'];
        return productList.map((json) => Product.fromJson(json)).toList();
      }
    }

    throw Exception('Failed to fetch products');
  }
}
