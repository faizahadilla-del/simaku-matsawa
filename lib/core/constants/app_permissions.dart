// =======================================================
// SIMAKU MATSAWA
// Application Permissions
// =======================================================

class AppPermissions {
  AppPermissions._();

  /// Hak Menu
  static const List<String> menuPermissions = [

    "Dashboard",

    "Pengguna",
    "Siswa",
    "Kelas",
    "Tahun Pelajaran",

    "Jenis Pembayaran",

    "Pembayaran",
    "Pengeluaran",

    "Laporan",

    "Pengaturan",
  ];

  /// Hak Mengelola Pembayaran
  static const List<String> paymentPermissions = [

    "SPP",
    "Komite",
    "LKS",
    "Seragam",

  ];
}