import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/user-model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/planning-model.dart';

final db = FirebaseFirestore.instance;

createPlanning(String uid, Map<String, dynamic> tasks) {
  var collectionRoot = db.collection("users").doc(uid);
  var id = collectionRoot.collection("planning").doc().id;
  collectionRoot
      .collection("planning")
      .doc(id)
      .set(tasks)
      .then((value) => Fluttertoast.showToast(
          msg:
              "Your planning has been added successfully, you can check it out"))
      .catchError((error) => Fluttertoast.showToast(
          msg: "something went wrong, check your connection or try later"));
}

updatePlanning(String uid, PlanningModel plan) {
  db
      .collection("users")
      .doc(uid)
      .collection("planning")
      .doc(plan.id)
      .update({'tasks': plan.tasks})
      .then((value) => Fluttertoast.showToast(
          msg: "Your planning has been updated successfully"))
      .catchError((error) => Fluttertoast.showToast(
          msg: "something went wrong, check your connection or try later"));
}

setScore(UserModel user, List<Task> tasks) {
  if (tasks == []) {
    return;
  } else {
    for (var element in tasks) {
      user.exp = user.exp! + element.exp!;
    }
    db.collection("users").doc(user.uid).update({"exp": user.exp}).then((value) => Fluttertoast.showToast(
        msg: "Your score has been updated successfully"))
        .catchError((error) => Fluttertoast.showToast(
        msg: "something went wrong, check your connection or try later"));;
  }
}

getPlanning(String uid, String id) {
  PlanningModel plan = PlanningModel();
  db
      .collection("users")
      .doc(uid)
      .collection("planning")
      .doc(id)
      .get()
      .then((doc) => {
            doc.data()?.forEach((key, value) {
              if (key == "id") {
                plan.id = value;
              } else {
                plan.tasks = value;
              }
            })
          });
  return plan;
}
