import 'package:flutter/material.dart';
import 'package:food_app/food_main.dart';
import 'package:food_app/style/font.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food APP',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const FoodLobby(),
    );
  }
}


class FoodLobby extends StatelessWidget {
  const FoodLobby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('FOOD APP'),
      //   elevation: 5.0,
      // ),
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Column(
            children: [
              IconButton(
                iconSize: 100.0,
                color: Colors.green,
                disabledColor: Colors.grey,
                icon: Icon(Icons.restaurant),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return FoodMain();
                  }));
                },
              ),
              Text('푸드 레시피', style: TextStyle(fontFamily: MyfontFamily.GangwonBold, fontSize: 30, fontWeight: FontWeight.w700),),
              Text('클릭하여 시작하세요', style: TextStyle(fontFamily: MyfontFamily.GangWonLight, fontSize: 20, fontWeight: FontWeight.w500),),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
