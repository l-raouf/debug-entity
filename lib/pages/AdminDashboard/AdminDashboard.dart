import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      width: screenSize.width,
      height: screenSize.height * 0.9,
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 25, left: 25, bottom: 30),
          width: screenSize.width,
          child: Text(
            'Admin Dashboard',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.75,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: screenSize.width,
                height: 300,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 30),
                    height: 125,
                    width: screenSize.width,
                    child: Row(children: [
                      Container(
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(left: 22, top: 20),
                            width: 169,
                            child: Text(
                              'Users',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60, top: 25),
                            width: 169,
                            child: Text(
                              '75K',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 228, 169, 81)),
                            ),
                          ),
                        ]),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(128, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: 2)
                        ]),
                        margin: EdgeInsets.only(left: 15, right: 20),
                        width: 170,
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(left: 22, top: 20),
                            width: 169,
                            child: Text(
                              'Rating',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60, top: 25),
                            width: 169,
                            child: Text(
                              '4.7/5',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 228, 169, 81)),
                            ),
                          ),
                        ]),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(128, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: 2)
                        ]),
                        width: 170,
                      )
                    ]),
                  ),
                  Container(
                    height: 125,
                    width: screenSize.width,
                    child: Row(children: [
                      Container(
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(left: 22, top: 20),
                            width: 169,
                            child: Text(
                              'Suggestions',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60, top: 25),
                            width: 169,
                            child: Text(
                              '632',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 228, 169, 81)),
                            ),
                          ),
                        ]),
                        margin: EdgeInsets.only(left: 15, right: 20),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(128, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: 2)
                        ]),
                        width: 170,
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(left: 22, top: 20),
                            width: 169,
                            child: Text(
                              'Messages',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60, top: 25),
                            width: 169,
                            child: Text(
                              '436',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 228, 169, 81)),
                            ),
                          ),
                        ]),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(128, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(0, 0),
                              spreadRadius: 2)
                        ]),
                        width: 170,
                      )
                    ]),
                  )
                ]),
              ),
              Container(
                height: 420,
                width: screenSize.width,
                child: Column(children: [
                  Container(
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(left: 14),
                        width: screenSize.width,
                        child: Text(
                          'This Month',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'as of 01 January 2022, 13:45 PM',
                                  style: TextStyle(fontSize: 8),
                                ),
                              ),
                              Container(
                                child: Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 3),
                                    width: 16,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 184, 135, 53),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  Container(
                                    child: Text('This Month',
                                        style: TextStyle(fontSize: 8)),
                                  )
                                ]),
                              ),
                              Container(
                                child: Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 3),
                                    width: 16,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(117, 156, 156, 156),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  Container(
                                    child: Text('Last Month',
                                        style: TextStyle(fontSize: 8)),
                                  )
                                ]),
                              ),
                            ]),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(128, 0, 0, 0),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                    width: screenSize.width,
                    height: 230,
                    child: Image.asset(
                      'assets/graphe.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ]),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
