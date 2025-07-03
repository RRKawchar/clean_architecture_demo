import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String fullname;
  final String email;
  final String phone;
  final String dob;
  final String gender;
  final String address;
  final String image;
  final String device_token;
  final String created_at;
  final String updated_at;
  final int status;

  const UserEntity({
    required this.id,
    required this.fullname,
    required this.email,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.address,
    required this.image,
    required this.device_token,
    required this.created_at,
    required this.updated_at,
    required this.status,
  });

  @override
  List<Object?> get props => [
    id,
    fullname,
    email,
    phone,
    dob,
    gender,
    address,
    image,
    device_token,
    created_at,
    updated_at,
    status,
  ];
}
