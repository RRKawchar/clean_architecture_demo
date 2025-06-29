// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
  status: json['status'] as bool,
  message: json['message'] as String,
  userId: (json['id'] as num).toInt(),
  fullname: json['fullname'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.userId,
      'fullname':instance.fullname,
      'email':instance.email,
    };
