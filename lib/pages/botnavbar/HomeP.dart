import 'package:debug_entity/pages/Profile/ProfileP.dart';
import 'package:debug_entity/pages/leaderboard/LeaderBoard.dart';
import 'package:debug_entity/pages/recipe/RecipeP.dart';
import 'package:debug_entity/pages/task/FoodP.dart';
import 'package:flutter/material.dart';

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  int currentIndex = 0;
  final screens = [LeaderBoard(), RecipeP(), FoodP(), ProfileP()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedFontSize: 15,
          selectedItemColor: Color.fromARGB(255, 228, 169, 81),
          selectedIconTheme: IconThemeData(size: 30),
          unselectedItemColor: Color.fromARGB(255, 93, 93, 93),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Color.fromARGB(255, 9, 12, 13),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Receip',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tasks',
            ),
          ]),
    );
  }
}
