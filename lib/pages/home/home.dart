import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double imageHeight = 172;
  var advices = ['Advice1', 'Advice2', 'Advice3'];
  final _controler = PageController();
  int rank = 178;
  int food = 12;

  @override
  Widget build(BuildContext context) {
    double lineWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, user',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.75),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.logout),
                    iconSize: 36,
                    onPressed: (){},
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Column(
                children: [
                  Text(
                    'Wanna hear an advice ?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [Image.asset('assets/double_comma_top.png')],
                        ),
                        SizedBox(height: 8,),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                              child: PageView(
                                controller: _controler,
                                children: advices.map((advice) {
                                  return Center(
                                    child: Text(
                                      advice,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            SmoothPageIndicator(
                              controller: _controler,
                              count: advices.length,
                              effect: ExpandingDotsEffect(
                                activeDotColor: HexColor('#E4A951'),
                                dotColor: HexColor('#E5E1E1'),
                                dotHeight: 10,
                                dotWidth: 10,
                                spacing: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Image.asset('assets/double_comma_bottom.png')],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                width: lineWidth,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My ranking',
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    rank.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 24,),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                          width: lineWidth * 0.55,
                          height: imageHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/my_ranking.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My food',
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    food.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 24,),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          width: lineWidth * 0.4,
                          height: imageHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/my_food.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Container(
                      child: GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My tasks',
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                                size: 32,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      width: lineWidth,
                      height: imageHeight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/my_tasks.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

