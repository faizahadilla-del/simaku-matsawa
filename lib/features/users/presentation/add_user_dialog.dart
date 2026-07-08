import 'package:flutter/material.dart';

class AddUserDialog extends StatelessWidget {
  const AddUserDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Tambah Pengguna"),

      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            TextField(
              decoration: const InputDecoration(
                labelText: "Nama Lengkap",
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
  initialValue: "Master",
              items: const [

  DropdownMenuItem(
    value: "Master",
    child: Text("Master"),
  ),

  DropdownMenuItem(
    value: "Bendahara",
    child: Text("Bendahara"),
  ),

  DropdownMenuItem(
    value: "Wali Kelas",
    child: Text("Wali Kelas"),
  ),

],
              onChanged: (_) {},
              decoration: const InputDecoration(
                labelText: "Role",
              ),
            ),
          ],
        ),
      ),

      actions: [

        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Batal"),
        ),

        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Simpan"),
        ),
      ],
    );
  }
}