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

  Map<String, dynamic> toJson() => {
    "fullname": fullname,
    "email": email,
    "password": password,
    "phone": phone,
    "dob": dob,
    "gender": gender,
    "address": address,
    "device_token": deviceToken,
    "reset_token": resetToken,
    "status": status,
    "image": image,
  };

}