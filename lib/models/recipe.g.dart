// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe()
  ..id = json['id'] as num
  ..user = User.fromJson(json['user'] as Map<String, dynamic>)
  ..typeFood = TypeFood.fromJson(json['typeFood'] as Map<String, dynamic>)
  ..ingredient = json['ingredient'] as String
  ..instructions = json['instructions'] as String
  ..recipeName = json['recipeName'] as String
  ..image = json['image'] as String;

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'typeFood': instance.typeFood,
      'ingredient': instance.ingredient,
      'instructions': instance.instructions,
      'recipeName': instance.recipeName,
      'image': instance.image,
    };
