// lib/widgets/contact_section.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('idorenyinstephen@example.com'),
            onTap: () => _launchURL('mailto:idorenyinstephen@example.com'),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('+234 801 234 5678'),
            onTap: () => _launchURL('tel:+2348012345678'),
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('https://github.com/idorenyinstephen'),
            onTap: () => _launchURL('https://github.com/idorenyinstephen'),
          ),
        ],
      ),
    );
  }
}
