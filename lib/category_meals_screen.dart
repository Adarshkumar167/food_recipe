import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text(
          categoryId!,
        ),
      ),
    );
  }
}
