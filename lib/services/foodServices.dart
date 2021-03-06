import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debug_entity/models/food-model.dart';
import 'package:fluttertoast/fluttertoast.dart';

final db = FirebaseFirestore.instance;
void suggestFood(String title,String category,String ingredient,List tags,String picture) async{
  String id = db.collection("foodSuggestion").doc().id;
  await db.collection("foodSuggestion").doc(id).set({
    "id":id,
    "title":title,
    "category":category,
    "ingredient":ingredient,
    "tags":tags,
    "picture":picture
  }).then((value) => Fluttertoast.showToast(
      msg:
      "Thank you for your suggestion, we will make sure to check it out"))
      .catchError((error) => Fluttertoast.showToast(
      msg: "something went wrong, check your connection or try later"));
}
Stream<List<FoodModel>>getFoodByCategory(String category){
  return db.collection("food").where('category',isEqualTo: category).limit(10).snapshots().map((snapshot) =>
      snapshot.docs.map((doc) =>FoodModel.fromJson(doc.data())
      ).toList());
}
