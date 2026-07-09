class UserModel {
  final String id;
  final String fullName;
  final String username;
  final String password;
  final String role;

  final String? homeroomClass;

  const UserModel({
    required this.id,
    required this.fullName,
    required this.username,
    required this.password,
    required this.role,
    this.homeroomClass,
  });

  UserModel copyWith({
    String? id,
    String? fullName,
    String? username,
    String? password,
    String? role,
    String? homeroomClass,
  }) {
    return UserModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      username: username ?? this.username,
      password: password ?? this.password,
      role: role ?? this.role,
      homeroomClass: homeroomClass ?? this.homeroomClass,
    );
  }
}