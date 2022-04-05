import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      color: Colors.red,
      height: screenSize.height * 0.8,
      width: screenSize.width,
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Positioned(
            child: Text(
              'LeaderBoard',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.35,
          child: ListView(children: [
            Container(
              height: 58,
              width: screenSize.width * 0.3,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'NomUtilisateur',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(
                      '25641',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/GoldMedal.png'),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(25)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 238, 241, 78)
                    ],
                  )),
            ),
            Container(
              height: 58,
              width: screenSize.width * 0.3,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'NomUtilisateur',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(
                      '15641',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/SilverMedal.png'),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(25)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 187, 182, 182)
                    ],
                  )),
            ),
            Container(
              height: 58,
              width: screenSize.width * 0.3,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'NomUtilisateur',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(
                      '25641',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/BronzeMedal.png'),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(25)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 228, 169, 81)
                    ],
                  )),
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Positioned(
            child: Text(
              'Region LeaderBoard',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ]),
    ));
  }
}
