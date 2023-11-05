import 'package:json_annotation/json_annotation.dart';

part 'typeFood.g.dart';

@JsonSerializable()
class TypeFood {
  TypeFood();

  late num id;
  late String iconType;
  late String nameType;
  
  factory TypeFood.fromJson(Map<String,dynamic> json) => _$TypeFoodFromJson(json);
  Map<String, dynamic> toJson() => _$TypeFoodToJson(this);
}
