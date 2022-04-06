class FoodModel {
  String? id;
  String? title;
  String? category;
  String? picture;
  List? ingredient;
  List? tags;
  int? calories;

  FoodModel(
      {this.id,
      this.title,
      this.category,
      this.picture,
      this.ingredient,
      this.tags,
      this.calories});
  static FoodModel fromJson(Map<String,dynamic>json)=>FoodModel(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      picture: json['picture'],
      ingredient: json['ingredient'],
      tags:json['tags'],
    calories: json['calories']
  );
}
