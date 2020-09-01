import 'package:Meals_App/models/meal.dart';
import 'package:Meals_App/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritiesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritiesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You have no favorites yet - start adding some! '),
        ),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
              duration: favoriteMeals[index].duration,
              imageUrl: favoriteMeals[index].imageUrl,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
