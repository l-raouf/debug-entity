import 'package:flutter/material.dart';

class FoodValidation extends StatefulWidget {
  const FoodValidation({Key? key}) : super(key: key);

  @override
  _FoodValidationState createState() => _FoodValidationState();
}

class _FoodValidationState extends State<FoodValidation> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    int currentIndex = 1;

    return SafeArea(
        child: Container(
      width: screenSize.width,
      height: screenSize.height * 0.88,
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 24, top: 20),
          width: screenSize.width,
          child: Text(
            'Food Suggestions',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 0.79,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 19,
                  itemBuilder: (context, index) {
                    return Container(
                      width: screenSize.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(25)),
                          color: Color.fromARGB(255, 228, 228, 226)),
                      height: 40,
                      margin: EdgeInsets.all(20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:
                                  Text('Piza', style: TextStyle(fontSize: 18)),
                            ),
                            Container(
                                child: Text(
                              'Pastas',
                              style: TextStyle(fontSize: 18),
                            )),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.done),
                                  color: Colors.green,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.close),
                                  color: Colors.red,
                                ),
                              ]),
                            )
                          ]),
                    );
                  }),
            ))
      ]),
    ));
  }
}
