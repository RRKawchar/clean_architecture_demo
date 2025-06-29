import 'package:json_annotation/json_annotation.dart';
import 'package:practice_demo01/src/features/auth/domain/entities/login_entity.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse extends LoginEntity {
  AuthResponse({
    required super.status,
    required super.message,
    required super.userId,
    required super.fullname,
    required super.email

  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String,dynamic> toJson()=> _$AuthResponseToJson(this);

}


// return UserModel(
// token: json['token'],
// message: json['message'],
// adminId: json['admin_id'],
// );


