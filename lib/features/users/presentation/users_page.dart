import 'package:flutter/material.dart';

import '../data/user_repository.dart';
import '../domain/user_model.dart';
import 'add_user_dialog.dart';
import 'widgets/user_header.dart';
import 'widgets/user_search_bar.dart';
import 'widgets/users_table.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    _reloadUsers();
  }

  void _reloadUsers() {
    users = List<UserModel>.from(UserRepository.getAll());

    print("Reload Users");
    print("Jumlah user : ${users.length}");

    for (final user in users) {
      print("${user.fullName} - ${user.username}");
    }
  }

  Future<void> _addUser() async {
    print("Tombol Tambah Pengguna diklik");

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => const AddUserDialog(),
    );

    print("Dialog ditutup");
    print("Result = $result");

    if (result == true) {
      print("Memanggil reload...");

      setState(() {
        _reloadUsers();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          UserHeader(
            onAdd: _addUser,
          ),

          const SizedBox(height: 20),

          const UserSearchBar(),

          const SizedBox(height: 20),

          Expanded(
            child: UsersTable(
              users: users,
            ),
          ),
        ],
      ),
    );
  }
}