import 'package:debug_entity/pages/Profile/ProfileP.dart';
import 'package:debug_entity/pages/botnavbar/HomeP.dart';
import 'package:debug_entity/pages/recipe/RecipeP.dart';
import 'package:debug_entity/pages/register/RegisterP.dart';
import 'package:debug_entity/pages/task/FoodP.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainP(),
    );
  }
}

class MainP extends StatefulWidget {
  const MainP({Key? key}) : super(key: key);

  @override
  _MainPState createState() => _MainPState();
}

class _MainPState extends State<MainP> {
  int currentIndex = 0;
  final screens = [
    HomeP(),
    RecipeP(),
    FoodP(),
    ProfileP(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Container(
            margin: EdgeInsets.only(top: 50),
            child: IconButton(
              iconSize: 50,
              icon: Icon(Icons.ac_unit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterP()),
                );
              },
            )),
        Container(
            margin: EdgeInsets.all(00),
            child: IconButton(
              iconSize: 50,
              icon: Icon(Icons.ac_unit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeP()),
                );
              },
            )),
      ]),
    );
  }
}
