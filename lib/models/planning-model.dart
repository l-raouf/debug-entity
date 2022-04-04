class PlanningModel {
  String? id;
  List<Task>? tasks;//[{task:string,exp;int},{task:string,exp;int}]

  PlanningModel({this.id, this.tasks});
}
class Task{
  String? taskName;
  int? exp;
  bool? checked;
  Task({this.taskName,this.exp});
}
