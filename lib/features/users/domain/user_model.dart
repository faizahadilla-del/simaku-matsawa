class UserModel {
  final String name;
  final String username;
  final String password;
  final String role;
  final bool isActive;

  UserModel({
    required this.name,
    required this.username,
    required this.password,
    required this.role,
    required this.isActive,
  });
}