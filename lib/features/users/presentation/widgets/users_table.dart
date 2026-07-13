import 'package:flutter/material.dart';

import '../../domain/user_model.dart';

class UsersTable extends StatelessWidget {
  final List<UserModel> users;

  const UsersTable({
    super.key,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "USERS TABLE BERHASIL",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}