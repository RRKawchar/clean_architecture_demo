import 'package:json_annotation/json_annotation.dart';
import 'package:practice_demo01/src/core/helper/helper_method.dart';

import '../../domain/entities/user_entity.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.fullname,
    required super.email,
    required super.phone,
    required super.dob,
    required super.gender,
    required super.address,
    required super.image,
    required super.device_token,
    required super.created_at,
    required super.updated_at,
    required super.status,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String,dynamic> toJson()=> _$UserModelToJson(this);


}
