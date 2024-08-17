import 'package:flutter/material.dart';
import 'package:meals/Models/meal.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
    // required this.onselectMeal,
  });

  final String title;
  final List<Meal> meals;
  void selectMeal(BuildContext context, Meal meal) {
    // Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealDetailScreen(
              meal: meal,
            )));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemBuilder: (ctx, index) => Text(meals[index].title),
    );
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh ... noting here!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try Selecting a different category',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      );
    }

    if (meals.isNotEmpty) {
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => MealItem(
                meal: meals[index],
                onSelectMeal: selectMeal,
              ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
