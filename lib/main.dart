import 'package:flutter/material.dart';
import 'package:food_app/food_main.dart';

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
      appBar: AppBar(
        title: Text('FOOD APP'),
        elevation: 5.0,
      ),
      body: Container(
        child: Center(
          child: IconButton(
            iconSize: 100.0,
            color: Colors.green,
            disabledColor: Colors.grey,
            icon: Icon(Icons.settings_power_rounded),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return FoodMain();
              }));
            },
          ),
        ),
      ),
    );
  }
}
