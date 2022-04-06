import 'package:debug_entity/pages/Register/RegisterP.dart';

import 'package:flutter/material.dart';

import '../../services/authServices.dart';

class SignInP extends StatefulWidget {
  const SignInP({Key? key}) : super(key: key);

  @override
  _SignInPState createState() => _SignInPState();
}

class _SignInPState extends State<SignInP> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
            body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Align(
                alignment: Alignment(0.0, -1),
                child: Image(image: AssetImage('assets/hilal2.jpg'))),
            Align(
                alignment: Alignment(0.0, 0.99),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.6,
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
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
                            Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(110, 196, 196, 196),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: TextFormField(
                                  controller: emailController,
                                  onSaved: (value) {
                                    emailController.text = value!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your message';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 196, 196, 196)),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ))
                          ]),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment(-0.9, 0.0),
                                  child: Text('Password:')),
                              Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(110, 196, 196, 196),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: TextFormField(
                                    controller: passwordController,
                                    onSaved: (value) {
                                      passwordController.text = value!;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your message';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                  ))
                            ])),
                        Align(
                          alignment: Alignment(1, 0),
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 184, 135, 53)),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            height: 64,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 184, 135, 53),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: TextButton(
                                onPressed: () {
                                  if (!_formkey.currentState!.validate()) {
                                    return;
                                  }
                                  signInService(emailController.text,
                                      passwordController.text, context);
                                },
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
                                          builder: (context) =>
                                              const RegisterP()),
                                    );
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 217, 179, 86)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        )));
  }
}
