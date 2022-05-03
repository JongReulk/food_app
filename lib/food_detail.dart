import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data/recipe.dart';
import 'package:food_app/style/font.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FoodDetail extends StatefulWidget {
  final Recipe recipes;
  const FoodDetail({Key? key, required this.recipes}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.recipes.youtubeUrl,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      )
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    _controller.pause();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipes.label),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset(widget.recipes.imageUrl, fit: BoxFit.cover,),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(widget.recipes.foodDetail1, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: MyfontFamily.GangwonBold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(widget.recipes.foodDetail2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100,fontFamily: MyfontFamily.GangWonLight)),
              ),
              SizedBox(
                height: 15,
              ),
              ratings,
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.people, size: 40,color: Colors.green,),
                        Text(widget.recipes.people.toString() + ' 인분', style: informationStyle,)
                      ]
                    ),
                    Column(
                        children: [
                          Icon(Icons.timer, size: 40,color: Colors.green,),
                          Text((widget.recipes.time.round()).toString() + ' 분', style: informationStyle,)
                        ]
                    ),
                    Column(
                        children: [
                          Icon(Icons.star, size: 40,color: Colors.green,),
                          Text(widget.recipes.difficulty.toString(),style: informationStyle,),
                        ]
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Text('\t재료', style: TextStyle(fontFamily: MyfontFamily.GangwonBold, fontWeight: FontWeight.w500),textScaleFactor: 2),
                  Text(' Ingredients', style: TextStyle(fontFamily: MyfontFamily.GangWonLight, fontWeight: FontWeight.w200),textScaleFactor: 1.5),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              
              Container(
                //height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,// 일정한 줄부터 시작
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('\t[ 재료 ]', style: TextStyle(fontFamily: MyfontFamily.GangwonBold),textScaleFactor: 1.5),
                            ListView.builder(shrinkWrap: true,itemBuilder: (context, index) {
                              IngredientsDetail ingredients = widget.recipes.ingredientsDetail[index];
                              return Text('${ingredients.name}\t${ingredients.measure}',style: informationStyle,);
                            },
                              padding: EdgeInsets.all(10),
                              itemCount: widget.recipes.ingredientsDetail.length,)
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('\t[ 양념 ]', style: TextStyle(fontFamily: MyfontFamily.GangwonBold),textScaleFactor: 1.5),
                            ListView.builder(shrinkWrap: true,itemBuilder: (context, index) {
                              Seasoning seasoning = widget.recipes.seasoning[index];
                              return Text('${seasoning.name}\t${seasoning.measure}',style: informationStyle,);
                            },padding: EdgeInsets.all(10),itemCount: widget.recipes.seasoning.length,)
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text('\t조리순서', style: TextStyle(fontFamily: MyfontFamily.GangwonBold, fontWeight: FontWeight.w500),textScaleFactor: 2),
                  Text(' Steps', style: TextStyle(fontFamily: MyfontFamily.GangWonLight, fontWeight: FontWeight.w200),textScaleFactor: 1.5),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                        Steps step = widget.recipes.step[index];
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              FloatingActionButton(onPressed: () {},
                                heroTag: step.num.toString(),
                                child: Text(step.num.toString(), style: TextStyle(color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),),
                                elevation: 0.1,
                              ),
                              SizedBox(width: 10,),
                              Flexible(
                                child: Text(
                                  step.step, style: TextStyle(fontFamily: MyfontFamily.GangWonLight, fontWeight: FontWeight.w300, fontSize: 20),
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        );
                      },itemCount: widget.recipes.step.length,),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Text('\t관련 영상', style: TextStyle(fontFamily: MyfontFamily.GangwonBold, fontWeight: FontWeight.w500),textScaleFactor: 2),
                  Text(' Youtube', style: TextStyle(fontFamily: MyfontFamily.GangWonLight, fontWeight: FontWeight.w200),textScaleFactor: 1.5),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: YoutubePlayerBuilder(player: YoutubePlayer(controller: _controller), builder: (context, player) {
                  return Column(
                    children: [
                      player,
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(widget.recipes.label+
                          ' 만들기 끝!!',style: informationStyle,),
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var stars = Row(
  children: [
    Icon(Icons.star,color: Colors.green[500],),
    Icon(Icons.star,color: Colors.green[500],),
    Icon(Icons.star,color: Colors.green[500],),
    Icon(Icons.star,color: Colors.black,),
    Icon(Icons.star,color: Colors.black,),
  ],
);

final ratings = Container(
  padding: EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      stars,
      SizedBox(width: 10,),
      Text(
        '175 리뷰',
        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic,fontWeight: FontWeight.w700, letterSpacing: 0.5),
      )
    ],
  ),
);

final informationStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w300,
  fontFamily: MyfontFamily.GangWonLight,
  letterSpacing: 1
);

