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
        appBar: AppBar(title: const Text('Column & Row Widgets Demo')),
        body: Center(
          child: Row(
            // Task 3: Distribute the children evenly using mainAxisAlignment
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(Icons.star, size: 50),
              Icon(Icons.star, size: 50),
              Icon(Icons.star, size: 50),
              Icon(Icons.star_border, size: 50), // Task 1: Added two more children
              Icon(Icons.star_border, size: 50), // Task 1: Added two more children
            ],
          ),
        ),
      ),
    );
  }
}
