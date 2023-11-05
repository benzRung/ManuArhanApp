import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:minipro/models/recipe.dart';
import 'package:minipro/models/recipes.dart';

class PostRecipeServices {
  static const String url = "http://10.160.22.29:8080/api/recipes";

  static Future<Map<String, dynamic>?> postRecipe(Map<String, dynamic> data) async {
    try {
       final response = await http.post(
        Uri.parse(url),
         headers: {
          'Content-Type': 'application/json', // ตั้งค่าประเภทเนื้อหาที่เหมาะสม
        },
        body: json.encode(data), // แปลงข้อมูลของคุณเป็น JSON
        
        );
      if (200 == response.statusCode) {
        Map<String, dynamic> responseBody = json.decode(utf8.decode(response.bodyBytes));
        print(responseBody);
        return responseBody;
      } else {
        print("error responseBody");
      }
    } catch (e) {
      print('Error ${e.toString()}');
      print("error responseBody22");
    }
  }
}
