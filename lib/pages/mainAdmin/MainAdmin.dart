import 'package:debug_entity/pages/AdminDashboard/AdminDashboard.dart';
import 'package:debug_entity/pages/AdminFoodValidation/FoodValidation.dart';
import 'package:debug_entity/pages/Profile/ProfileP.dart';
import 'package:debug_entity/pages/Task/FoodP.dart';
import 'package:debug_entity/pages/adminProfile/AdminProfile.dart';
import 'package:flutter/material.dart';

class MainAdmin extends StatefulWidget {
  const MainAdmin({Key? key}) : super(key: key);

  @override
  _MainAdminState createState() => _MainAdminState();
}

class _MainAdminState extends State<MainAdmin> {
  int currentIndex = 0;
  final screens = [
    AdminDashboard(),
    FoodValidation(),
    AdminProfile(),
  ];
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Validation',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
