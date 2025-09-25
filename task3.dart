// Malika Xasanboyeva
// 220106
// Tuesday 14.00

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Task 4: Create a TextEditingController to read input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Widget Demo')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Task 1: Changed labelText to "Enter your password"
              // Task 2: Added obscureText for password field
              // Task 3: Added an icon in the decoration
              TextField(
                controller: _controller, // Task 4: Added controller
                obscureText: true, // Hide text for password input
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password', // Task 1
                  icon: const Icon(Icons.lock), // Task 3: Added icon
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Display the entered password
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Entered Password'),
                      content: Text(_controller.text),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Show Entered Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
