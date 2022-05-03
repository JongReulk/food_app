import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data/recipe.dart';
import 'package:food_app/style/font.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FoodThirdTab extends StatefulWidget {
  const FoodThirdTab({Key? key}) : super(key: key);

  @override
  State<FoodThirdTab> createState() => _FoodThirdTabState();
}

class _FoodThirdTabState extends State<FoodThirdTab> {

  Recipe? _recipe;
  String? videoId;
  
  @override
  void initState() {
    super.initState();

  }
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        Recipe _recipe = recipes[index];
        return Container(
          color: Colors.orangeAccent,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  YoutubePlayer(controller: YoutubePlayerController(initialVideoId: _recipe.youtubeUrl,
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                  )), ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _recipe.label, style: TextStyle(fontFamily: MyfontFamily.GangWonHW, fontWeight: FontWeight.w900, fontSize: 32),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        },itemCount: recipes.length,)
      );
  }
}
