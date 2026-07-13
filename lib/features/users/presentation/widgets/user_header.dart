import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  final VoidCallback onAdd;

  const UserHeader({
    super.key,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton.icon(
        onPressed: onAdd,
        icon: const Icon(Icons.add),
        label: const Text("Tambah Pengguna"),
      ),
    );
  }
}