// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: IntroductionScreen(
            scrollPhysics: const BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                titleWidget: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 300.0, 0, 50.0),
                  child: Text(
                    'رمضان كريم',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Kufam',
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
                footer: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#C0954D').withOpacity(0.75),
                      padding: const EdgeInsets.all(25),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ),
                decoration: PageDecoration(
                  imagePadding: const EdgeInsets.all(0),
                  contentMargin: const EdgeInsets.all(0),
                  bodyAlignment: Alignment.center,
                  bodyTextStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Colors.white),
                  boxDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/intro1.png'),
                          fit: BoxFit.cover)),
                  imageAlignment: Alignment.center,
                ),
              ),
              PageViewModel(
                titleWidget: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 300.0, 0, 50.0),
                  child: Text(
                    'رمضان كريم',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Kufam',
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
                footer: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#C0954D').withOpacity(0.75),
                      padding: const EdgeInsets.all(25),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ),
                decoration: PageDecoration(
                  bodyAlignment: Alignment.center,
                  bodyTextStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Colors.white),
                  boxDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/intro3.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              PageViewModel(
                titleWidget: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 300.0, 0, 50.0),
                  child: Text(
                    'رمضان كريم',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Kufam',
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
                footer: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  HexColor('#D9B356').withOpacity(0.64),
                                  HexColor('#926526').withOpacity(0.64)
                                ],
                              ),
                            ),
                            height: 40,
                            width: 133,
                            child: const Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 32.0),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  HexColor('#D9B356').withOpacity(0.64),
                                  HexColor('#926526').withOpacity(0.64)
                                ],
                              ),
                            ),
                            height: 40,
                            width: 133,
                            child: const Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                decoration: PageDecoration(
                  bodyAlignment: Alignment.center,
                  bodyTextStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Colors.white),
                  boxDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/intro2.png'),
                          fit: BoxFit.cover)),
                ),

                // image: Image.asset(
                //     'assets/images/intro2.png'),
              ),
            ],
            onDone: () {},
            onSkip: () {},
            showSkipButton: true,
            skip: const Text('Skip'),
            skipColor: Colors.white,
            showDoneButton: false,
            showNextButton: false,
            dotsDecorator: DotsDecorator(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                size: const Size(10.0, 4.0),
                activeSize: const Size(20.0, 4.0),
                activeColor: HexColor('#C0954D'),
                color: HexColor('#E5E1E1'),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
        ),
      ),
    );
  }
}
