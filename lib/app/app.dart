import 'package:flutter/material.dart';

import '../features/auth/presentation/login_page.dart';
import 'theme.dart';

class SimakuApp extends StatelessWidget {
  const SimakuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMAKU MATSAWA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}