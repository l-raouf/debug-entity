import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecipeP extends StatefulWidget {
  const RecipeP({Key? key}) : super(key: key);

  @override
  _RecipePState createState() => _RecipePState();
}

class _RecipePState extends State<RecipeP> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var foodName = [
      'Vegetables',
      'Meat & Fish',
      'Sweets',
      'Salads',
    ];
    return SafeArea(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 27, top: 10),
              child: Text(
                'My Food',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ))
          ],
        ),
        Container(
          height: screenSize.height * 0.77,
          width: screenSize.width,
          child: ListView.builder(
              itemCount: foodName.length,
              itemBuilder: (context, index) {
                return Container(
                  height: screenSize.height * 0.3,
                  width: screenSize.width,
                  child: Column(children: [
                    Container(
                      width: screenSize.width,
                      margin: EdgeInsets.only(left: 20, top: 12),
                      child: Text(
                        '${foodName[index]}',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 180, 178, 178)),
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.25,
                      width: screenSize.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Container(
                                          height: 380,
                                          width: 280,
                                          color: Colors.white,
                                          child: Column(children: [
                                            Container(
                                              width: 280,
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    color: Color.fromARGB(
                                                        255, 228, 169, 81),
                                                    icon: Icon(Icons.close),
                                                    onPressed: (() {}),
                                                  ),
                                                  Container(
                                                    width: 200,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Text(
                                                'Description',
                                                style: TextStyle(
                                                    fontSize: 32,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10, left: 15),
                                                    child: Text(
                                                      'Name :',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('Spagetti'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  bottom: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10, left: 15),
                                                    child: Text(
                                                      'Tags :',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: 6,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 5,
                                                            top: 10,
                                                          ),
                                                          child: Text(
                                                              'Tag${index + 1}'),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  bottom: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10, left: 15),
                                                    child: Text(
                                                      'Ingredients :',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: 6,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 5,
                                                            top: 10,
                                                          ),
                                                          child: Container(
                                                            child: Text(
                                                                'ingredient${index + 1}'),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 20, left: 20),
                                              child: Row(children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10, left: 15),
                                                  child: Text(
                                                    'Calories :',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('690'),
                                                ),
                                              ]),
                                            )
                                          ]),
                                        ),
                                      );
                                    });
                              },
                            ),
                            margin: EdgeInsets.all(10),
                            height: screenSize.height * 0.12,
                            width: screenSize.width * 0.4,
                            color: Colors.grey,
                          );
                        },
                      ),
                    )
                  ]),
                );
              }),
        )
      ]),
    );
  }
}
