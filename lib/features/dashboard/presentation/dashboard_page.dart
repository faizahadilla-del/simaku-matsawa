import 'package:flutter/material.dart';
import '../../students/presentation/students_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SIMAKU MATSAWA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardMenu(
              icon: Icons.people,
              title: "Data Siswa",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StudentsPage(),
                  ),
                );
              },
            ),
            DashboardMenu(
              icon: Icons.payments,
              title: "Pembayaran",
              onTap: () {},
            ),
            DashboardMenu(
              icon: Icons.bar_chart,
              title: "Laporan",
              onTap: () {},
            ),
            DashboardMenu(
              icon: Icons.settings,
              title: "Pengaturan",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DashboardMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: const Color(0xFF0B8F3A),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}