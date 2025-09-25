// Malika Xasanboyeva
// 220106
// Tuesday 14.00


import 'package:flutter/material.dart';

void main() {
  runApp(const UserProfileCardApp());
}

class UserProfileCardApp extends StatelessWidget {
  const UserProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile Card',
      home: Scaffold(
        appBar: AppBar(title: const Text('User Profile Card')),
        body: Center(
          child: UserProfileCard(),
        ),
      ),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light grey background
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Wrap content vertically
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '@username',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'A short bio about the user goes here. '
            'It can span multiple lines and gives an overview about the user.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add follow logic here
                },
                child: const Text('Follow'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add message logic here
                },
                child: const Text('Message'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
