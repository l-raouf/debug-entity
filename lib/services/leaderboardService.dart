import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;
Future<QuerySnapshot<Map<String, dynamic>>> getLeaderBoard()async{
  var result=await db.collection("users").orderBy("EXP").limit(10).get();
  return result;
}