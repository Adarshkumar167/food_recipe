import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '../dummy_data.dart';

class CategroyMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  const CategroyMealsScreen({super.key});

  // final String categoryId;
  // final String categoryTitle;
  // const CategroyMealsScreen(this.categoryId, this.categoryTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    final routeAgrs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeAgrs['title'];
    final categoryId = routeAgrs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
