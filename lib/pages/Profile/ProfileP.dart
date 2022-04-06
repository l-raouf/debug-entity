import 'dart:ui';

import 'package:debug_entity/models/user-model.dart';
import 'package:flutter/material.dart';

import '../LeaderBoard/LeaderBoard.dart';

class ProfileP extends StatefulWidget {
  final UserModel user;
  const ProfileP({Key? key, required this.user}) : super(key: key);

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
              child: Image.network(
                widget.user.picture!,
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
                  backgroundImage: NetworkImage(widget.user.picture!),
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
                  child: ListView(
                    physics: FixedExtentScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Container(
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
                            '',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 30,
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                    ]),
                  ),
                      ),
                       InkWell(
                         onTap: (){
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context)=>LeaderBoard())
                           );
                         },
                         child: Container(
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
                            '',
                            style: TextStyle(color: Colors.white),
                          ),
                      ),
                      Positioned(
                          top: 40,
                          left: 30,
                          child: Text(
                            'LeaderBoard',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                      )
                    ]),
                  ),
                       ),
                ],
              )),
            )
          ]),
        ),
      ]),
    ));
  }
}
