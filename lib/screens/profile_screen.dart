// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:personal_profile_app/about_section.dart';
import 'package:personal_profile_app/contact_section.dart';
import 'package:personal_profile_app/profile_header.dart';
import 'package:personal_profile_app/projects_section.dart';
import 'package:personal_profile_app/skills_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
