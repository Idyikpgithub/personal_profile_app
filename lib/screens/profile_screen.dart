// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:personal_profile_app/about_section.dart';
import 'package:personal_profile_app/contact_section.dart';
import 'package:personal_profile_app/profile_header.dart';
import 'package:personal_profile_app/projects_section.dart';
import 'package:personal_profile_app/skills_section.dart';
import 'package:personal_profile_app/them/app_them.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            SizedBox(height: 20),
            AboutSection(),
            SizedBox(height: 20),
            SkillsSection(),
            SizedBox(height: 20),
            ContactSection(),
            SizedBox(height: 20),
            ProjectsSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // 🌗 auto-switch based on system
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
