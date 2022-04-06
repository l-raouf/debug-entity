import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/user-model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../pages/botnavbar/HomeP.dart';


final _auth = FirebaseAuth.instance;
signInService(String email, String password,context) async {
  UserModel user;
  await _auth
      .signInWithEmailAndPassword(email: email, password: password)
      .then((uid) => {
            Fluttertoast.showToast(msg: "Login Successful!"),
            FirebaseFirestore.instance.collection("users").doc(_auth.currentUser?.uid).get().then((value) => {
              user=UserModel.fromMap(value.data()),
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>HomeP(user: user)))
            }),
          })
      .catchError((e) => {Fluttertoast.showToast(msg: "Something wrong, check your info")});

}

void signUpService(String email, String password, String username,context) async {
  await _auth
      .createUserWithEmailAndPassword(email: email, password: password)
      .then((user) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    //adding our new user to collection"users"
    await db
        .collection("users")
        .doc(user!.uid)
        .set({"uid": user.uid, "username": username, "email": email,"exp":0,"picture":"Profile.png"});
    Fluttertoast.showToast(msg: "account created successfully");
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>HomeP(user: UserModel(email: email,uid: user.uid,picture: "Profile.png",exp: 0,username: username))));
  }).catchError((e) {
    Fluttertoast.showToast(msg: e.message);
  });
}

void logOutService() async {
  await _auth.signOut();
}
