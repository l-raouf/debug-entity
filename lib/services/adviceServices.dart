import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

final db = FirebaseFirestore.instance;

void suggestAdvice(String category, String body) async {
  String id = db.collection("advicesSuggestion").doc().id;
  await db
      .collection("advicesSuggestion")
      .doc(id)
      .set({"id": id, "category": category, "body": body})
      .then((value) => Fluttertoast.showToast(
          msg:
              "Thank you for your suggestion, we will make sure to check it out"))
      .catchError((error) => Fluttertoast.showToast(
          msg: "something went wrong, check your connection or try later"));
}
 getAdvice() async{
  var result=await db.collection("advices").limit(1).get();
  return result.docs[0].data();
}