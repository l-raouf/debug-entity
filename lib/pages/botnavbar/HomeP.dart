
import 'package:debug_entity/pages/Profile/ProfileP.dart';
import 'package:debug_entity/pages/Task/FoodP.dart';
import 'package:debug_entity/pages/home/home.dart';
import 'package:debug_entity/pages/recipe/RecipeP.dart';
import 'package:flutter/material.dart';

import '../../models/user-model.dart';

class HomeP extends StatefulWidget {
  final UserModel user;
  const HomeP({Key? key, required this.user}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  UserModel user=UserModel();
  int currentIndex = 0;
  late List screens;
  void initState() {
    setState(() {
      screens = [Home(user: widget.user),  RecipeP(), FoodP(user: widget.user),  ProfileP()];
    });
    super.initState();
  }
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
              label: 'Profile',
            ),
          ]),
    );
  }
}
