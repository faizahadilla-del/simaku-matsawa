import '../domain/user_model.dart';

class UserRepository {
  UserRepository._();

  static final List<UserModel> users = [

    const UserModel(
      id: "1",
      fullName: "Administrator",
      username: "admin",
      password: "admin",
      role: "Master",
    ),

    const UserModel(
      id: "2",
      fullName: "Ahmad Fauzi",
      username: "bendahara",
      password: "123456",
      role: "Bendahara",
    ),

    const UserModel(
      id: "3",
      fullName: "Nur Aisyah",
      username: "walikelas7a",
      password: "123456",
      role: "Wali Kelas",
      homeroomClass: "VII A",
    ),
  ];

  static List<UserModel> getAll() {
    return users;
  }

  static void add(UserModel user) {
    users.add(user);
  }

  static void update(UserModel user) {
    final index = users.indexWhere((u) => u.id == user.id);

    if (index != -1) {
      users[index] = user;
    }
  }

  static void delete(String id) {
    users.removeWhere((u) => u.id == id);
  }

  static UserModel? findById(String id) {
    try {
      return users.firstWhere((u) => u.id == id);
    } catch (_) {
      return null;
    }
  }
}