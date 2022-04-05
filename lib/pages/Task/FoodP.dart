import 'package:flutter/material.dart';

class FoodP extends StatefulWidget {
  const FoodP({Key? key}) : super(key: key);

  @override
  _FoodPState createState() => _FoodPState();
}

class _FoodPState extends State<FoodP> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var tasksLeft = [];
    return SafeArea(
        child: Container(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.1,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 0),
                    child: Text(
                      'My Tasks',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins'),
                    ),
                  )),
              Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.1,
                child: Positioned(
                  left: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_task,
                    ),
                    splashRadius: 5,
                    iconSize: 27,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Stack(
                              children: [
                                Positioned(
                                    bottom: 0.00001,
                                    child: Container(
                                      width: screenSize.width,
                                      height: screenSize.height * 0.1,
                                      color: Colors.white,
                                      child: Center(
                                        child: Container(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.close,
                                              size: 16,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text('Cancel'),
                                            )
                                          ],
                                        )),
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment(0, -2.0),
                                  child: Image.asset(
                                      'assets/images/hilalremoved.png'),
                                ),
                                Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Container(
                                        height: 380,
                                        width: 280,
                                        child: SingleChildScrollView(
                                          child: Stack(children: [
                                            Column(children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 20),
                                                child: Text(
                                                  'Add Task',
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      label: Text('Title')),
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20),
                                                          child: Text(
                                                              'Suggestions')),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 20),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          228,
                                                                          169,
                                                                          81),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              20))),
                                                              child: TextButton(
                                                                onPressed:
                                                                    (() {}),
                                                                child: Text(
                                                                  'Sport',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              )),
                                                          Container(
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          228,
                                                                          169,
                                                                          81),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              20))),
                                                              child: TextButton(
                                                                onPressed:
                                                                    (() {}),
                                                                child: Text(
                                                                  'Sport',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              )),
                                                        ]),
                                                      )
                                                    ]),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 50),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20),
                                                        child: Text('Priority'),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 20),
                                                        child: Row(children: [
                                                          Icon(Icons.star),
                                                          Icon(Icons.star),
                                                          Icon(Icons.star),
                                                          Icon(Icons.star),
                                                          Icon(Icons.star),
                                                        ]),
                                                      )
                                                    ]),
                                              ),
                                              Container(
                                                  margin:
                                                      EdgeInsets.only(top: 50),
                                                  height: 50,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 184, 135, 53),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100))),
                                                  child: TextButton(
                                                      onPressed: () {},
                                                      child: Text('Add',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )))),
                                            ]),
                                          ]),
                                        )))
                              ],
                            );
                          });
                    },
                  ),
                ),
              )
            ]),
          ),
          Container(
            width: screenSize.width,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: Positioned(
                  child: Text(
                    'Task List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.35,
                child: ListView.builder(
                    itemCount: 8,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(25)),
                            gradient: LinearGradient(
                                begin: index % 2 == 0
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                end: index % 2 == 0
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                colors: [
                                  Color.fromARGB(255, 255, 232, 197),
                                  Color.fromARGB(255, 228, 169, 81),
                                ])),
                        height: 58,
                        width: screenSize.width * 0.3,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'task1',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.done,
                                        color: Colors.green,
                                      ),
                                      Container(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      )
                                    ],
                                  ))
                            ]),
                      );
                    }),
              )
            ]),
          ),
          Container(
            height: screenSize.height * 0.35,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                width: screenSize.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            'Completed',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          )),
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          margin: EdgeInsets.only(right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 169, 81),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextButton(
                            onPressed: (() {}),
                            child: Text(
                              'Validate',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ))
                    ]),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.3,
                child: Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.4,
                  margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(15),
                                  topRight: Radius.circular(25)),
                              color: Color.fromARGB(255, 234, 234, 233)),
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
                                  'Completed Task 1',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      )))
                            ],
                          )),
                        );
                      }),
                ),
              )
            ]),
          )
        ]),
      ),
    ));
  }
}
