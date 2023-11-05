import 'package:json_annotation/json_annotation.dart';
import "recipe.dart";
part 'recipes.g.dart';

@JsonSerializable()
class Recipes {
  Recipes();

  late List<Recipe> recipes;
  
  factory Recipes.fromJson(Map<String,dynamic> json) => _$RecipesFromJson(json);
  Map<String, dynamic> toJson() => _$RecipesToJson(this);

  static Recipes filterList(Recipes recipes,String filterString){
  Recipes tempUsers = recipes;
  List<Recipe> recipesList = tempUsers.recipes
       .where((r) => 
            (r.recipeName.toLowerCase().contains(filterString.toLowerCase())) 
            )
        .toList();

  recipes.recipes = recipesList;
  return recipes;


}
}
