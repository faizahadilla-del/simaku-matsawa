import '../domain/user_model.dart';

class UserRepository {
  static final List<UserModel> users = [
    UserModel(
      name: "Administrator",
      username: "admin",
      password: "admin",
      role: "Master",
      isActive: true,
    ),
  ];
}