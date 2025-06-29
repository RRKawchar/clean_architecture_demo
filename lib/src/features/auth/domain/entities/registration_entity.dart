class RegistrationEntity{
  final String fullname;
  final String email;
  final String password;
  final String phone;
  final String dob;
  final String gender;
  final String address;
  final String deviceToken;
  final String resetToken;
  final int status;
  final String image;


  RegistrationEntity({
    required this.fullname,
    required this.email,
    required this.password,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.address,
    required this.deviceToken,
    required this.resetToken,
    required this.status,
    required this.image,
  });

}