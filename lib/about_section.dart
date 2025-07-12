// lib/widgets/about_section.dart
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "I'm Ikpembe Idorenyin Stephen, a passionate Flutter developer with a knack for crafting beautiful and functional mobile applications. I enjoy learning new technologies, solving problems, and building impactful projects.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
