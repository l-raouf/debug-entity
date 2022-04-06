import 'dart:ui';

import 'package:flutter/material.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  _AdminProfileState createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      child: Column(children: [
        Container(
          height: screenSize.height * 0.3,
          width: screenSize.width,
          child: Stack(children: [
            Container(
              height: screenSize.height * 0.3,
              width: screenSize.width,
              child: Image.asset(
                'assets/walidpic.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 20,
                left: 20,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Back',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            Align(
                alignment: Alignment(0, 2.2),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/walidpic.png'),
                ))
          ]),
        ),
        Container(
          height: screenSize.height * 0.5,
          width: screenSize.width,
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              height: screenSize.height * 0.3,
              width: screenSize.width,
              child: Container(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        top: screenSize.height * 0.03,
                        left: screenSize.width * 0.04),
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 0.5,
                    child: Stack(children: [
                      Container(
                        child: Image.asset('assets/Rectangle.png'),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          'Validation:',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 30,
                        child: Text(
                          '05 waiting..',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  );
                },
                itemCount: 4,
              )),
            )
          ]),
        ),
      ]),
    ));
  }
}
