import 'package:flutter/material.dart';
// import 'package:meals/Models/category.dart';
import 'package:meals/data/dummtdata.dart';
import 'package:meals/widgets/category_griditem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Your Category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // avialablecategories.map((category))=>Category griditems(category:category)
          for (final category in availableCategories)
            CategoryGriditem(category: category)
        ],
      ),
    );
  }
}
