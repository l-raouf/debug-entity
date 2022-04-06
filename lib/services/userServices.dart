import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/user-model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

final db=FirebaseFirestore.instance;
editProfile(UserModel user){
  db.collection("users").doc(user.uid).update({
    "username":user.username,
    "email":user.email,
    "picture":user.picture,
  }).then((value) => Fluttertoast.showToast(
      msg: "Your information has been updated successfully"))
      .catchError((error) => Fluttertoast.showToast(
      msg: "something went wrong, check your connection or try later"));
}
getPhoto(UserModel user) async {
  var url= await FirebaseStorage.instance.ref().child("profile/${user.picture}").getDownloadURL();
  return url;
}
Stream<List<UserModel>>getTop10(){
  return db.collection("users").orderBy("exp").limit(10).snapshots().map((snapshot) =>
      snapshot.docs.map((doc) =>UserModel.fromMap(doc.data())
      ).toList());
}
Stream<List<UserModel>>getTop3(){
  return db.collection("users").orderBy("exp").limit(3).snapshots().map((snapshot) =>
      snapshot.docs.map((doc) =>UserModel.fromMap(doc.data())
      ).toList());
}