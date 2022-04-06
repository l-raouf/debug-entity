
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/advice-model.dart';
import 'package:debug_entity/pages/SignIn/SignInP.dart';
import 'package:debug_entity/services/adviceServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/user-model.dart';
import '../../services/authServices.dart';

class Home extends StatefulWidget {
  final UserModel user;
  const Home({Key? key, required this.user}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final double imageHeight = 172;
  int advLength=0;
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
                    'Hello, ${widget.user.username ?? "..."}',
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
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(32),
                              child: Container(
                                height: 140,
                                width: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Are you sure ?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            logOutService();
                                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>SignInP()));
                                          },
                                          icon: Icon(
                                            Icons.check,
                                            size: 32,
                                            color: HexColor('#22BB3A'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.close,
                                            size: 32,
                                            color: HexColor('#E02323'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
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
                              child: StreamBuilder<List<AdviceModel>>(
                                  stream: getAdvice(),
                                  builder: (context, snapshot) {
                                    if(snapshot.hasData){
                                      final advices=snapshot.data!;
                                      advLength=advices.length;
                                      return PageView(
                                        controller: _controler,
                                        children: advices.map(buildAdvice).toList(),
                                      );
                                    }else{
                                      return Text('No Advices Today');
                                    }

                                  }
                              ),
                            ),
                            SmoothPageIndicator(
                              controller: _controler,
                              count: advLength,
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
  Widget buildAdvice(AdviceModel advice)=>Center(
    child: Text(
      '${advice.body}',
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
      ),
    ),
  );
}