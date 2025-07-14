import 'package:flutter/material.dart';
import 'package:personal_profile_app/them/app_them.dart';
import 'package:provider/provider.dart';
import 'screens/profile_screen.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const ProfileApp(),
    ),
  );
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'My Profile',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
