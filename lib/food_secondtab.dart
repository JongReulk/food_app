import 'package:flutter/material.dart';
import 'package:food_app/data/recipe.dart';
import 'package:food_app/food_detail.dart';
import 'package:food_app/style/font.dart';

class FoodSecondTab extends StatefulWidget {
  const FoodSecondTab({Key? key}) : super(key: key);

  @override
  State<FoodSecondTab> createState() => _FoodSecondTabState();
}

class _FoodSecondTabState extends State<FoodSecondTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: ListView.builder(itemBuilder: (context, index) {
        Recipe _recipes = recipes[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return FoodDetail(recipes: _recipes);
            }));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(_recipes.label, style: TextStyle(fontFamily: MyfontFamily.GangwonBold, fontSize: 32, fontWeight: FontWeight.w900),),
                  SizedBox(height: 10,),
                  Text(_recipes.foodDetail1, style: TextStyle(fontFamily: MyfontFamily.GangWonSW, fontSize: 20, fontWeight: FontWeight.w300),)
                ],
              ),
            ),
          ),
        );
      }, itemCount: recipes.length,),
    );
  }
}
