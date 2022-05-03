import 'package:flutter/material.dart';
import 'package:food_app/data/recipe.dart';
import 'package:food_app/style/font.dart';
import 'food_detail.dart';

class FoodFirstTab extends StatefulWidget {
  const FoodFirstTab({Key? key}) : super(key: key);

  @override
  State<FoodFirstTab> createState() => _FoodFirstTabState();
}

class _FoodFirstTabState extends State<FoodFirstTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return FoodDetail(recipes: recipes[index]);
            }));
          },
          child: RecipeCard(recipes[index]),
        );
      },itemCount: recipes.length,)
    );
  }

  Widget RecipeCard(Recipe recipe) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            SizedBox(
              height: 10,
            ),
            Text(recipe.label, style: TextStyle(
                fontSize: 30, fontFamily: MyfontFamily.GangWonTT),),
          ],
        ),
      ),
    );
  }
}
