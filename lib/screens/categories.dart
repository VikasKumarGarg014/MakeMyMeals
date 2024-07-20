import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Your Category'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Text(
            'Pick Your Category',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Pick Your Category',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Pick Your Category',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Pick Your Category',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Pick Your Category',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
