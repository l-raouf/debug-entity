
import 'package:debug_entity/pages/SignIn/SignInP.dart';

import 'package:flutter/material.dart';

import '../../services/authServices.dart';

class RegisterP extends StatefulWidget {
  const RegisterP({Key? key}) : super(key: key);

  @override
  _RegisterPState createState() => _RegisterPState();
}

class _RegisterPState extends State<RegisterP> {
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();
  final TextEditingController usernameController= TextEditingController();
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  final TextEditingController password2Controller= TextEditingController();
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
            alignment: Alignment(0.0, -1.8),
            child: Image(image: AssetImage('assets/hilal2.jpg'))),
        Align(
          alignment: Alignment(0.0, 1.2),
          child: Form(
            key:_formkey,
            child: Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.8,
              child: Column(children: [
                Container(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Please Fill the form to create an account',
                    )),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    Align(
                        alignment: Alignment(-0.90, 0.0),
                        child: Text('UserName :')),
                    TextFormField(
                      controller: usernameController,
                      onSaved: (value){
                        usernameController.text=value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Put Your UserName',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.name,
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    Align(
                        alignment: Alignment(-0.90, 0.0), child: Text('Email:')),
                    TextFormField(
                      controller: emailController,
                      onSaved: (value){
                        emailController.text=value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Put Your Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    Align(
                        alignment: Alignment(-0.90, 0.0),
                        child: Text('Password:')),
                    TextFormField(
                      controller: passwordController,
                      onSaved: (value){
                        passwordController.text=value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty||value.length<6) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Put Your Password',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Column(children: [
                    Align(
                        alignment: Alignment(-0.90, 0.0),
                        child: Text('Confirm Your Password:')),
                    TextFormField(
                      controller: password2Controller,
                      onSaved: (value){
                        password2Controller.text=value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty ||value!=passwordController.text) {
                          return 'verify your password please';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Confirm Your Password',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    )
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 35),
                    height: 64,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 184, 135, 53),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: TextButton(
                        onPressed: () {
                          if(!_formkey.currentState!.validate()){
                            return;
                          }
                          signUpService(emailController.text,passwordController.text,usernameController.text,context);
                        },
                        child: Text('Register',
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
                          child: Text("I'am already a Member !"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInP()),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 217, 179, 86)),
                            ),
                          ),
                        )
                      ],
                    ))
              ]),
            ),
          ),
        )
      ],
    ));
  }
}
