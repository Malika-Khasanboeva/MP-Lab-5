// Malika Xasanboyeva
// 220106
// Tuesday 14.00

import 'package:flutter/material.dart';

void main() {
  runApp(const ProductListItemApp());
}

class ProductListItemApp extends StatelessWidget {
  const ProductListItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List Item',
      home: Scaffold(
        appBar: AppBar(title: const Text('Product List Item')),
        body: Center(
          child: ProductListItem(),
        ),
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 400,
      child: Row(
        children: [
          // Fixed size product image using SizedBox
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://via.placeholder.com/100', // Placeholder image URL
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 16), // Horizontal spacing

          // Expanded column for title, description, and price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Wrap content vertically
              children: const [
                Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'A brief description of the item goes here. It gives details about the product.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '\$99.99',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
