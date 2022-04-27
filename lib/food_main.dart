import 'package:flutter/material.dart';

import 'data/recipe.dart';

class FoodMain extends StatefulWidget {
  const FoodMain({Key? key}) : super(key: key);

  @override
  State<FoodMain> createState() => _FoodMainState();
}

class _FoodMainState extends State<FoodMain> {
  List<Recipe> recipes = [
    Recipe('비빔밥', 'assets/bibimbap.jpg', '2', 3.0),
    Recipe('비빔밥', 'assets/bibimbap.jpg', '2', 3.0),
    Recipe('비빔밥', 'assets/bibimbap.jpg', '2', 3.0),
    Recipe('비빔밥', 'assets/bibimbap.jpg', '2', 3.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOOD RECIPE'),
        leading: Icon(Icons.food_bank_rounded),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        print(recipes[index]);
        return RecipeCard(recipes[index]);
      },itemCount: recipes.length,)
    );
  }

  Widget RecipeCard(Recipe recipe) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            SizedBox(
              height: 10,
            ),
            Text(recipe.label, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

