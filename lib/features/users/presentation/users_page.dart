import 'package:flutter/material.dart';
import 'add_user_dialog.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () {
  showDialog(
    context: context,
    builder: (_) => const AddUserDialog(),
  );
},
              icon: const Icon(Icons.add),
              label: const Text("Tambah Pengguna"),
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              hintText: "Cari pengguna...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 24),

          Expanded(
            child: ListView(
              children: const [
                UserCard(
                  name: "Administrator",
                  username: "admin",
                  role: "Master",
                ),
                UserCard(
                  name: "Ahmad Fauzi",
                  username: "bendahara",
                  role: "Bendahara",
                ),
                UserCard(
                  name: "Siti Rahma",
                  username: "operator",
                  role: "Operator",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String username;
  final String role;

  const UserCard({
    super.key,
    required this.name,
    required this.username,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(name),
        subtitle: Text("$username • $role"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}