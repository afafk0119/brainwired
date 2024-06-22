import 'dart:convert';
import 'package:brainwired/data/models/productmodel.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/users';
  Future<List<User>> fetchProducts() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => User.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
