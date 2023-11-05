import 'package:json_annotation/json_annotation.dart';
import "user.dart";
import "typeFood.dart";
part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  Recipe();

  late num id;
  late User user;
  late TypeFood typeFood;
  late String ingredient;
  late String instructions;
  late String recipeName;
  late String image;
  
  factory Recipe.fromJson(Map<String,dynamic> json) => _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
