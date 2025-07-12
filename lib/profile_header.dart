// lib/widgets/profile_header.dart
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.blue,
      width: double.infinity,
      // ignore: prefer_const_constructors
      child: Column(
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/aidee.jpg'),
          ),
          SizedBox(height: 10),
          Text(
            'Ikpembe Idorenyin Stephen',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
