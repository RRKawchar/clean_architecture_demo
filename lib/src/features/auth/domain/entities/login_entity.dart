class LoginEntity {
  final bool status;
  final String message;
  final int id;
  final String fullname;
  final String email;

  LoginEntity({
    required this.status,
    required this.message,
    required this.id,
    required this.fullname,
    required this.email,
  });
}
