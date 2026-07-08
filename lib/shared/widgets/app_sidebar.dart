import 'package:flutter/material.dart';

class AppSidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onMenuSelected;

  const AppSidebar({
    super.key,
    required this.selectedIndex,
    required this.onMenuSelected,
  });

  Widget menuItem({
    required int index,
    required IconData icon,
    required String title,
  }) {
    final bool selected = selectedIndex == index;

    return ListTile(
      leading: Icon(
        icon,
        color: selected ? Colors.green : Colors.black87,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.green : Colors.black87,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      tileColor: selected
    ? Colors.green.withValues(alpha: 0.08)
    : null,
      onTap: () => onMenuSelected(index),
    );
  }

  Widget menuTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      color: Colors.white,
      child: ListView(
        children: [
          const SizedBox(height: 24),

          const Icon(
            Icons.account_balance,
            size: 60,
            color: Color(0xFF0B8F3A),
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "SIMAKU MATSAWA",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Center(
            child: Text(
              "Sistem Manajemen Keuangan",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          const Divider(height: 32),

          menuItem(
            index: 0,
            icon: Icons.dashboard,
            title: "Dashboard",
          ),

          menuTitle("DATA MASTER"),

          menuItem(
            index: 1,
            icon: Icons.people,
            title: "Pengguna",
          ),

          menuItem(
            index: 2,
            icon: Icons.school,
            title: "Siswa",
          ),

          menuItem(
            index: 3,
            icon: Icons.class_,
            title: "Kelas",
          ),

          menuItem(
            index: 4,
            icon: Icons.calendar_month,
            title: "Tahun Pelajaran",
          ),

          menuItem(
            index: 5,
            icon: Icons.payments,
            title: "Jenis Pembayaran",
          ),

          menuTitle("TRANSAKSI"),

          menuItem(
            index: 6,
            icon: Icons.point_of_sale,
            title: "Pembayaran",
          ),

          menuItem(
            index: 7,
            icon: Icons.money_off,
            title: "Pengeluaran",
          ),

          menuTitle("LAPORAN"),

          menuItem(
            index: 8,
            icon: Icons.bar_chart,
            title: "Laporan",
          ),

          menuTitle("PENGATURAN"),

          menuItem(
            index: 9,
            icon: Icons.settings,
            title: "Pengaturan",
          ),

          const Divider(),

          menuItem(
            index: 10,
            icon: Icons.logout,
            title: "Logout",
          ),
        ],
      ),
    );
  }
}