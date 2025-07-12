// lib/widgets/skills_section.dart
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  Widget buildSkill(String skill, double level) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: level,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
          minHeight: 8,
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildSkill('Flutter & Dart', 0.85),
          buildSkill('Firebase', 0.75),
          buildSkill('UI/UX Design', 0.65),
          buildSkill('Git & GitHub', 0.80),
        ],
      ),
    );
  }
}
