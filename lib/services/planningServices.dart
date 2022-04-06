import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/user-model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/planning-model.dart';

final db = FirebaseFirestore.instance;

createPlanning(String uid, String name,int exp) {
  var collectionRoot = db.collection("users").doc(uid);
  var id = collectionRoot.collection("planning").doc().id;
  collectionRoot
      .collection("planning")
      .doc(id)
      .set({
    "id":id,
    "exp":exp,
    "taskName":name,
    "checked":false
  })
      .then((value) => Fluttertoast.showToast(
          msg:
              "Your Task has been added successfully, you can check it out"))
      .catchError((error) => Fluttertoast.showToast(
          msg: "something went wrong, check your connection or try later"));
}
updateTask(String uid, Task task){
  db
      .collection("users")
      .doc(uid)
      .collection("planning")
      .doc(task.id)
      .update({'checked': task.checked})
      .then((value) => Fluttertoast.showToast(
      msg: "Your Task has been updated successfully"))
      .catchError((error) => Fluttertoast.showToast(
      msg: "something went wrong, check your connection or try later"));
}
resetTask(String uid, List<Task> plan) {
  plan.forEach((element) {
    db
        .collection("users")
        .doc(uid)
        .collection("planning")
        .doc(element.id)
        .update({'checked': false})
        .then((value) => Fluttertoast.showToast(
        msg: "Your planning has been reset successfully"))
        .catchError((error) => Fluttertoast.showToast(
        msg: "something went wrong, check your connection or try later"));
  });

}
deleteTask(String uid,Task task){
  db
      .collection("users")
      .doc(uid)
      .collection("planning")
      .doc(task.id)
      .delete()
      .then((value) => Fluttertoast.showToast(
      msg: "Your task has been deleted successfully"))
      .catchError((error) => Fluttertoast.showToast(
      msg: "something went wrong, check your connection or try later"));
}

setScore(UserModel user, Stream<List<Task>> tasks) {
  tasks.map((element)=>{
    element.forEach((task) {
      if(task.checked==true){
        user.exp = user.exp! + task.exp!;
      }
    }),
    resetTask(user.uid!, element)
  });
  db.collection("users").doc(user.uid).update({"exp": user.exp}).then((value) => Fluttertoast.showToast(
      msg: "Your score has been updated successfully"))
      .catchError((error) => Fluttertoast.showToast(
      msg: "something went wrong, check your connection or try later"));


}


Stream<List<Task>>getTask(String uid) =>
      db.collection("users")
          .doc(uid)
          .collection("planning").snapshots().map((snapshot) =>
          snapshot.docs.map((doc) =>Task.fromJson(doc.data())
          ).toList()
      );
Stream<List<Task>>getTaskChecked(String uid) =>
    db.collection("users")
        .doc(uid)
        .collection("planning").where("checked",isEqualTo: true).snapshots().map((snapshot) =>
        snapshot.docs.map((doc) =>Task.fromJson(doc.data())
        ).toList()
    );
Stream<List<Task>>getTaskNotChecked(String uid) =>
    db.collection("users")
        .doc(uid)
        .collection("planning").where("checked",isEqualTo: false).snapshots().map((snapshot) =>
        snapshot.docs.map((doc) =>Task.fromJson(doc.data())
        ).toList()
    );

