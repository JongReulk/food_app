import 'package:flutter/material.dart';
import 'package:food_app/food_detail.dart';
import 'package:food_app/style/font.dart';

import 'data/recipe.dart';

class FoodMain extends StatefulWidget {
  const FoodMain({Key? key}) : super(key: key);

  @override
  State<FoodMain> createState() => _FoodMainState();
}

class _FoodMainState extends State<FoodMain> with SingleTickerProviderStateMixin{
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('FOOD RECIPE'),
        actions: [Icon(Icons.food_bank_rounded),],
      ),
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            SizedBox(
              height: 10,
            ),
            Text(recipe.label, style: TextStyle(fontSize: 30, fontFamily: MyfontFamily.GangWonTT),),
          ],
        ),
      ),
    );
  }
}

