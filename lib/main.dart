import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        secondaryHeaderColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                  color: Color.fromRGBO(28, 51, 51, 1),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(28, 51, 51, 1),
              ),
              titleLarge: const TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabScreen(),
        CategroyMealsScreen.routeName: (ctx) => const CategroyMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen(),
        FiltersScreen.routeName: (ctx) => const FiltersScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (ctx) => const CategoriesScreen());
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (ctx) => const CategoriesScreen());
      // },
    );
  }
}
