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
    var names = [
      'ayoub',
      'wassim',
      'anis',
      'walid',
      'abdelkrim',
      'abdelatif',
      'abdelraouf',
      'brainy',
      'flutterbird',
      'dartbird',
    ];
    int scores = 22546;
    return SafeArea(
        child: Container(
      height: screenSize.height * 0.85,
      width: screenSize.width,
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 15, bottom: 20),
          alignment: Alignment.topLeft,
          child: Positioned(
            child: Text(
              'LeaderBoard',
              style: TextStyle(
                  letterSpacing: 1, fontSize: 27, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: Positioned(
            child: Text(
              'Top 3',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 180, 178, 178)),
            ),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.3,
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
                      '${names[0]}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 90, 90, 90),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
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
                    child: Image.asset('assets/GoldMedal.png'),
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
                      '${names[1]}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 90, 90, 90),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
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
                    child: Image.asset('assets/SilverMedal.png'),
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
                      '${names[2]}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 90, 90, 90),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
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
                    child: Image.asset('assets/BronzeMedal.png'),
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
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Positioned(
            child: Text(
              'Region LeaderBoard',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 180, 178, 178)),
            ),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.435,
          child: Container(
            width: screenSize.width * 0.6,
            height: screenSize.height * 0.39,
            margin: EdgeInsets.only(top: 0, left: 10, right: 10),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(25)),
                        color: Color.fromARGB(255, 228, 228, 226)),
                    width: screenSize.width * 0.5,
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            '${index + 4} - ${names[index + 3]}',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            '${scores - 1000 * index}',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )),
                  );
                }),
          ),
        )
      ]),
    ));
  }
}
