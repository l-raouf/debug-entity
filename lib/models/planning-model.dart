class Task{
  String? id;
  String? taskName;
  int? exp;
  bool? checked;
  Task({this.id,this.taskName,this.exp,this.checked});
  static Task fromJson(Map<String,dynamic>json)=>Task(
    id: json['id'],
    taskName: json['taskName'],
    exp: json['exp'],
    checked: json['checked']
  );
}
