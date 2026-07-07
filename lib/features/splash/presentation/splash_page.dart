import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B8F3A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.account_balance,
              size: 90,
              color: Colors.white,
            ),
            SizedBox(height: 24),
            Text(
              'SIMAKU MATSAWA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Sistem Manajemen Keuangan',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            Text(
              'MTs Muhammadiyah Wates',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Versi 0.1',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}