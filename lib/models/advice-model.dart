class AdviceModel {
  String? id;
  String? category;
  String? body;

  AdviceModel({this.id, this.category, this.body});
  static AdviceModel fromJson(Map<String,dynamic>json)=>AdviceModel(
    id: json['id'],
    category: json['category'],
    body: json['body'],
  );
}
