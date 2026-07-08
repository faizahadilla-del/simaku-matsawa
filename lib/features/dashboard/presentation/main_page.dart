import 'package:flutter/material.dart';

import '../../../shared/widgets/app_header.dart';
import '../../../shared/widgets/app_sidebar.dart';
import '../../../shared/widgets/stat_card.dart';
import '../../users/presentation/users_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void onMenuSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getPage() {
    switch (selectedIndex) {
      case 0:
        return const DashboardHome();

      case 1:
  return const UsersPage();

      case 2:
        return const Center(
          child: Text(
            "MASTER SISWA",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 3:
        return const Center(
          child: Text(
            "MASTER KELAS",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 4:
        return const Center(
          child: Text(
            "TAHUN PELAJARAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 5:
        return const Center(
          child: Text(
            "JENIS PEMBAYARAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 6:
        return const Center(
          child: Text(
            "PEMBAYARAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 7:
        return const Center(
          child: Text(
            "PENGELUARAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 8:
        return const Center(
          child: Text(
            "LAPORAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      case 9:
        return const Center(
          child: Text(
            "PENGATURAN",
            style: TextStyle(fontSize: 28),
          ),
        );

      default:
        return const DashboardHome();
    }
  }

  String getTitle() {
    switch (selectedIndex) {
      case 0:
        return "Dashboard";
      case 1:
        return "Master Pengguna";
      case 2:
        return "Master Siswa";
      case 3:
        return "Master Kelas";
      case 4:
        return "Tahun Pelajaran";
      case 5:
        return "Jenis Pembayaran";
      case 6:
        return "Pembayaran";
      case 7:
        return "Pengeluaran";
      case 8:
        return "Laporan";
      case 9:
        return "Pengaturan";
      default:
        return "Dashboard";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Row(
        children: [
          AppSidebar(
            selectedIndex: selectedIndex,
            onMenuSelected: onMenuSelected,
          ),

          Expanded(
            child: Column(
              children: [
                AppHeader(
                  title: getTitle(),
                  subtitle: "SIMAKU MATSAWA",
                ),

                Expanded(
                  child: getPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: const [
          StatCard(
            icon: Icons.school,
            title: "Jumlah Siswa",
            value: "432",
            color: Colors.blue,
          ),
          StatCard(
            icon: Icons.people,
            title: "Pengguna",
            value: "12",
            color: Colors.green,
          ),
          StatCard(
            icon: Icons.payments,
            title: "Pembayaran Hari Ini",
            value: "Rp2.500.000",
            color: Colors.orange,
          ),
          StatCard(
            icon: Icons.warning,
            title: "Tunggakan",
            value: "18",
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}