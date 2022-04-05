import 'package:debug_entity/pages/Register/RegisterP.dart';
import 'package:flutter/material.dart';

class SignInP extends StatefulWidget {
  const SignInP({Key? key}) : super(key: key);

  @override
  _SignInPState createState() => _SignInPState();
}

class _SignInPState extends State<SignInP> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Align(
            alignment: Alignment(0.0, -1),
            child: Image(image: AssetImage('assets/images/hilal2.jpg'))),
        Align(
            alignment: Alignment(0.0, 0.99),
            child: Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.6,
              child: Column(
                children: [
                  Container(
                      child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Please Fill the form below to continue',
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Align(
                          alignment: Alignment(-0.90, 0.0),
                          child: Text('Email:')),
                      TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 196, 196, 196)),
                          labelText: 'Put Your Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      )
                    ]),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(children: [
                        Align(
                            alignment: Alignment(-0.9, 0.0),
                            child: Text('Password:')),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Put Your Password',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        )
                      ])),
                  Align(
                    alignment: Alignment(1, 0),
                    child: Text(
                      'Forgot Password ?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 184, 135, 53)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 64,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 135, 53),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )))),
                  Container(
                    margin: EdgeInsets.only(
                      left: screenSize.width * 0.15,
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Don't have an Account !"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterP()),
                              );
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 217, 179, 86)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
