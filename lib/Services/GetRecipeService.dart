import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:minipro/models/recipe.dart';
import 'package:minipro/models/recipes.dart';

class GetRecipeServices {
  static const String url = "http://192.168.123.230:8080/api/recipes";

  static Future<Recipes> getRecipes() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        String responseBody = utf8.decode(response.bodyBytes); // Decode UTF-8 data
        print(responseBody);
        return parseRecipes(responseBody);
      } else {
        return Recipes();
      }
    } catch (e) {
      print('Error ${e.toString()}');
      return Recipes();
    }
  }

  static Recipes parseRecipes(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    List<Recipe> recipes = parsed.map<Recipe>((json) => Recipe.fromJson(json)).toList();
    Recipes r = Recipes();
    r.recipes = recipes;
    return r;
  }
}
