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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            WidgetStateProperty.all(Colors.grey.shade200),

        columns: const [
          DataColumn(label: Text("Nama")),
          DataColumn(label: Text("Username")),
          DataColumn(label: Text("Role")),
          DataColumn(label: Text("Status")),
          DataColumn(label: Text("Aksi")),
        ],

        rows: users.map((user) {
          return DataRow(
            cells: [
              DataCell(Text(user.fullName)),

              DataCell(Text(user.username)),

              DataCell(Text(user.role)),

              const DataCell(
                Chip(
                  label: Text("Aktif"),
                ),
              ),

              DataCell(
                Row(
                  children: [

                    IconButton(
                      tooltip: "Edit",
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),

                    IconButton(
                      tooltip: "Hak Akses",
                      onPressed: () {},
                      icon: const Icon(Icons.security),
                    ),

                    IconButton(
                      tooltip: "Reset Password",
                      onPressed: () {},
                      icon: const Icon(Icons.lock_reset),
                    ),

                    IconButton(
                      tooltip: "Hapus",
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}