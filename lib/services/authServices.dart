import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

final _auth = FirebaseAuth.instance;
void signInService(String email, String password) async {
  await _auth
      .signInWithEmailAndPassword(email: email, password: password)
      .then((uid) => {
            Fluttertoast.showToast(msg: "Login Successful!")
            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Home()))
          })
      .catchError((e) => {Fluttertoast.showToast(msg: e.message)});
}

void signUpService(String email, String password, String username,String category) async {
  await _auth
      .createUserWithEmailAndPassword(email: email, password: password)
      .then((user) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    //adding our new user to collection"users"
    await db
        .collection("users")
        .doc(user!.uid)
        .set({"uid": user.uid, "username": username, "email": email,"category":category,"exp":0,"picture":"LINK TO ADD"});
    Fluttertoast.showToast(msg: "account created successfully");
    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Home()))
  }).catchError((e) {
    Fluttertoast.showToast(msg: e.message);
  });
}

void logOutService() async {
  await _auth.signOut();
}
