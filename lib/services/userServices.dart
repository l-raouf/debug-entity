import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/user-model.dart';
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