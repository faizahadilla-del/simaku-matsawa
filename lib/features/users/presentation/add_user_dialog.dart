import 'package:flutter/material.dart';

import '../data/user_repository.dart';
import '../domain/user_model.dart';

class AddUserDialog extends StatefulWidget {
  const AddUserDialog({super.key});

  @override
  State<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String _role = "Master";

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _save() {
    if (!_formKey.currentState!.validate()) return;

    UserRepository.add(
      UserModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        fullName: _nameController.text,
        username: _usernameController.text,
        password: _passwordController.text,
        role: _role,
      ),
    );

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Tambah Pengguna"),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama wajib diisi";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Username wajib diisi";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value == null || value.length < 4) {
                    return "Minimal 4 karakter";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              DropdownButtonFormField<String>(
                initialValue: _role,
                decoration: const InputDecoration(
                  labelText: "Role",
                ),
                items: const [
                  DropdownMenuItem(
                    value: "Master",
                    child: Text("Master"),
                  ),
                  DropdownMenuItem(
                    value: "Bendahara Seragam",
                    child: Text("Bendahara Seragam"),
                  ),
                  DropdownMenuItem(
                    value: "Bendahara LKS",
                    child: Text("Bendahara LKS"),
                  ),
                  DropdownMenuItem(
                    value: "Bendahara Komite",
                    child: Text("Bendahara Komite"),
                  ),
                  DropdownMenuItem(
                    value: "Wali Kelas",
                    child: Text("Wali Kelas"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _role = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Batal"),
        ),
        ElevatedButton(
          onPressed: _save,
          child: const Text("Simpan"),
        ),
      ],
    );
  }
}