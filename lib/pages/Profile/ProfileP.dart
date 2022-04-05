import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileP extends StatefulWidget {
  const ProfileP({Key? key}) : super(key: key);

  @override
  _ProfilePState createState() => _ProfilePState();
}

class _ProfilePState extends State<ProfileP> {
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
                'assets/images/walidpic.png',
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
                  backgroundImage: AssetImage('assets/images/walidpic.png'),
                ))
          ]),
        ),
        Container(
          height: screenSize.height * 0.5,
          width: screenSize.width,
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(top: screenSize.height * 0.05),
                height: screenSize.height * 0.15,
                width: screenSize.width,
                child: Row(children: [
                  Container(
                      height: screenSize.height * 0.15,
                      width: screenSize.width * 0.3333,
                      child: Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.05),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Goals',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              '12',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      )),
                  Container(
                      height: screenSize.height * 0.15,
                      width: screenSize.width * 0.3333,
                      child: Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.05),
                        child: Column(children: [
                          Container(
                            child: Text('Receip',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text(
                              '24',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      )),
                  Container(
                      height: screenSize.height * 0.15,
                      width: screenSize.width * 0.3333,
                      child: Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.05),
                        child: Column(children: [
                          Container(
                            child: Text(
                              'Following',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              '98',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      )),
                ])),
            Container(
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
                        child: Image.asset('assets/images/Rectangle.png'),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          'My Tasks:',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 30,
                        child: Text(
                          '05 Attending',
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
