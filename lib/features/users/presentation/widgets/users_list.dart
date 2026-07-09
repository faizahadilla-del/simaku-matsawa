import 'package:flutter/material.dart';

import '../../domain/user_model.dart';
import 'user_card.dart';

class UsersList extends StatelessWidget {
  final List<UserModel> users;

  const UsersList({
    super.key,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return UserCard(
          user: user,
        );
      },
    );
  }
}