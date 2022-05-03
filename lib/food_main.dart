import 'package:flutter/material.dart';
import 'package:food_app/food_detail.dart';
import 'package:food_app/food_firsttab.dart';
import 'package:food_app/food_secondtab.dart';
import 'package:food_app/food_thirdtab.dart';
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
    _tabcontroller = TabController(length: 3, vsync: this);
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
        body: TabBarView(
          children: <Widget>[FoodFirstTab(), FoodSecondTab(), FoodThirdTab()],
          controller: _tabcontroller,),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.pink,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.image), text: ('MENU'),),
            Tab(icon: Icon(Icons.list_alt), text: ('LIST'),),
            Tab(icon: Icon(Icons.video_camera_back), text: ('VIDEO'),)
          ],
          controller: _tabcontroller,));
  }

}

