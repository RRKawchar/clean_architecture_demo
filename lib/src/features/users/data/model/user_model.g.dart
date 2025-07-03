// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  fullname: json['fullname'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  dob: json['dob'] as String,
  gender: json['gender'] as String,
  address: json['address'] as String,
  image: json['image'] as String,
  device_token: json['device_token'] as String,
  created_at: json['created_at'] as String,
  updated_at: json['updated_at'] as String,
  status: (json['status'] as num).toInt(),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'fullname': instance.fullname,
  'email': instance.email,
  'phone': instance.phone,
  'dob': instance.dob,
  'gender': instance.gender,
  'address': instance.address,
  'image': instance.image,
  'device_token': instance.device_token,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
  'status': instance.status,
};
