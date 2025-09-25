// Malika Xasanboyeva 
// 220106
// Tuesday 14.00

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Widget Demo')),
        body: Center(
          child: Container(
            // Task 4: Add margin
            margin: const EdgeInsets.all(20.0),

            // Task 3: Add decoration with rounded corners
            decoration: BoxDecoration(
              color: Colors.redAccent,  // Inside decoration
              borderRadius: BorderRadius.circular(16.0), // Rounded corners
            ),
            
            // Task 1: Set height to 150
            height: 150,
            width: 100,
            
            // Task 2: Replace Text with Icon
            child: const Icon(
              Icons.home,
              size: 50, // Adjust icon size
              color: Colors.white, // Icon color
            ),
          ),
        ),
      ),
    );
  }
}
