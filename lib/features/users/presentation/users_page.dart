import 'package:flutter/material.dart';

import '../data/user_repository.dart';
import '../domain/user_model.dart';
import 'add_user_dialog.dart';

import 'widgets/user_header.dart';
import 'widgets/user_search_bar.dart';
import 'widgets/users_table.dart';

class UsersPage extends StatelessWidget {
  UsersPage({super.key});

  final List<UserModel> users = UserRepository.getAll();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserHeader(
            onAdd: () {
              showDialog(
                context: context,
                builder: (_) => const AddUserDialog(),
              );
            },
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