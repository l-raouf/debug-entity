import 'package:debug_entity/models/user-model.dart';
import 'package:debug_entity/pages/Profile/ProfileP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../services/contactServices.dart';

class ContactUs extends StatefulWidget {
  final UserModel user;
  const ContactUs({Key? key, required this.user}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController titleController = new TextEditingController();
  final TextEditingController bodyController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context
                            );
                          },
                          child: Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                height: 290,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/contact_us.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Contact us',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'E-mail',
                                ),
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (value) {
                                  emailController.text = value!;
                                },
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your E-mail';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Title',
                                ),
                                controller: titleController,
                                keyboardType: TextInputType.text,
                                onSaved: (value) {
                                  titleController.text = value!;
                                },
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a title';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 4,
                                decoration: const InputDecoration(
                                  hintText: 'Message',
                                ),
                                controller: bodyController,
                                onSaved: (value) {
                                  bodyController.text = value!;
                                },
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your message';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 48,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    sendMessage(
                                        emailController.text,
                                        titleController.text,
                                        bodyController.text);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(28),
                                            child: Container(
                                              height: 140,
                                              width: 100,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Thanks',
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins',
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                    'We will make sure to check your suggestion',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                    //Navigator.pop(context);
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
                                    height: 60,
                                    width: 300,
                                    child: Center(
                                      child: Text(
                                        'Send',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
