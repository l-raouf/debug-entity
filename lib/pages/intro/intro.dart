// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Register/RegisterP.dart';
import '../SignIn/SignInP.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
            title: 'رمضان كريم',
            footer: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: HexColor('#C0954D').withOpacity(0.75),
                  padding: const EdgeInsets.all(25),
                  shape: const CircleBorder(),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            ),
            image: Image.asset(
              'assets/intro1.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                fontSize: 32.0,
                fontFamily: 'Kufam',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              bodyTextStyle: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
              imagePadding: EdgeInsets.zero,
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: true,
              bodyFlex: 2,
              imageFlex: 3,
            ),
          ),
          PageViewModel(
            title: 'رمضان كريم',
            body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
            footer: Padding(
              padding: const EdgeInsets.only(top: 50),
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
            image: Image.asset(
              'assets/intro3.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'Kufam',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              imagePadding: const EdgeInsets.all(0),
              contentMargin: const EdgeInsets.all(0),
              bodyAlignment: Alignment.center,
              bodyTextStyle: TextStyle(
                  fontFamily: 'Poppins', fontSize: 16.0, color: Colors.white),
              fullScreen: true,
              bodyFlex: 2,
              imageFlex: 3,
            ),
          ),
          PageViewModel(
            title: 'رمضان كريم',
            body: 'Lorem ipsum dolor sit amet consectetur adipisicing elit',
            image: Image.asset(
              'assets/intro2.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            footer: Padding(
              padding: const EdgeInsets.only(top: 50),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>SignInP()));
                  },
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
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>RegisterP()));
                  },
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
              titleTextStyle: TextStyle(
                  fontFamily: 'Kufam',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              bodyAlignment: Alignment.center,
              bodyTextStyle: TextStyle(
                  fontFamily: 'Poppins', fontSize: 16.0, color: Colors.white),
              imagePadding: const EdgeInsets.all(0),
              contentMargin: const EdgeInsets.all(0),
              fullScreen: true,
              bodyFlex: 2,
              imageFlex: 3,
            ),
          ),
        ],
        onDone: () {},
        onSkip: () {},
        showSkipButton: false,
        showDoneButton: false,
        showNextButton: false,
        dotsDecorator: DotsDecorator(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          size: const Size(10.0, 5.0),
          activeSize: const Size(22.0, 5.0),
          activeColor: HexColor('#C0954D'),
          color: HexColor('#E5E1E1'),
          spacing: const EdgeInsets.symmetric(horizontal: 4.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
