import '../domain/role_model.dart';

class RoleRepository {
  RoleRepository._();

  static final List<RoleModel> roles = [
    const RoleModel(
      id: "master",
      name: "Master",
    ),
    const RoleModel(
      id: "bendahara",
      name: "Bendahara",
    ),
    const RoleModel(
      id: "wali_kelas",
      name: "Wali Kelas",
    ),
  ];

  static List<RoleModel> getAll() {
    return roles;
  }

  static void add(RoleModel role) {
    roles.add(role);
  }

  static void delete(String id) {
    roles.removeWhere((role) => role.id == id);
  }
}