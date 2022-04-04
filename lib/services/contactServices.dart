import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

void sendMessage(String email, String title, String body) async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  String id = db.collection("contactUs").doc().id;
  await db
      .collection("contactUs")
      .doc(id)
      .set({"id": id, "email": email, "title": title, "body": body})
      .then((value) => Fluttertoast.showToast(
          msg:
              "Thank you for your suggestion, we will make sure to check it out"))
      .catchError((error) => Fluttertoast.showToast(
          msg: "something went wrong, check your connection or try later"));
}
