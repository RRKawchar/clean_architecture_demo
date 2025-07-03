class ProfileEntity {
  final int id;
  final String fullname;
  final String email;
  final String phone;
  final String dob;
  final String gender;
  final String address;
  final String image;
  final String deviceToken;
  final String created_at;
  final String updated_at;
  final int status;

  ProfileEntity({
    required this.id,
    required this.fullname,
    required this.email,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.address,
    required this.image,
    required this.deviceToken,
    required this.created_at,
    required this.updated_at,
    required this.status,
  });
}
