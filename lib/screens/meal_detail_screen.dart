import 'package:flutter/material.dart';
// import 'package:meals/data/dummydata.dart';

import 'package:meals/Models/meal.dart';
// import 'package:transparent_image/transparent_image.dart';
// import 'package:meals/widgets/meal_item_trait.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.meal});

  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular()),
        child: Image.network(
          // placeholder: MemoryImage(kTransparentImage),
          meal.imageUrl,
          fit: BoxFit.cover,
          height: 300,

          width: double.infinity,
        ),
      ),
    );
  }
}
