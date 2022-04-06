import 'dart:developer';

import 'package:debug_entity/models/planning-model.dart';
import 'package:debug_entity/models/user-model.dart';
import 'package:debug_entity/services/planningServices.dart';
import 'package:flutter/material.dart';

class FoodP extends StatefulWidget {
  final UserModel user;
  const FoodP({Key? key, required this.user}) : super(key: key);

  @override
  _FoodPState createState() => _FoodPState();
}

class _FoodPState extends State<FoodP> {
  final _formKey=GlobalKey<FormState>();
  final _controler = PageController();
  TextEditingController taskName=TextEditingController();
  @override

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var expAdd = 0;
    return SafeArea(
        child: Container(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.1,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 0),
                    child: Text(
                      'My Tasks',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins'),
                    ),
                  )),
              Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.1,
                child: Positioned(
                  left: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_task,
                    ),
                    splashRadius: 5,
                    iconSize: 27,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Stack(
                              children: [
                                Positioned(
                                    bottom: 0.00001,
                                    child: Container(
                                      width: screenSize.width,
                                      height: screenSize.height * 0.1,
                                      color: Colors.white,
                                      child: Center(
                                        child: Container(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.close,
                                              size: 16,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text('Cancel'),
                                            )
                                          ],
                                        )),
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment(0, -2.0),
                                  child: Image.asset(
                                      'assets/images/hilalremoved.png'),
                                ),
                                Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Container(
                                        height: 380,
                                        width: 280,
                                        child: SingleChildScrollView(
                                          child: Stack(children: [
                                            Column(children: [
                                              Container(
                                              margin:
                                                  EdgeInsets.only(top: 20),
                                              child: Text(
                                                'Add Task',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                                ),
                                              Form(
                                                key: _formKey,
                                                child: Container(
                                                  margin: EdgeInsets.all(20),
                                                  child: TextFormField(
                                                    controller: taskName,
                                                    onSaved: (value){
                                                      taskName.text=value!;
                                                    },
                                                    validator: (value){
                                                      if(value==Null || value=="") {
                                                        return "You need to provide a task";
                                                      }
                                                    },
                                                    decoration: InputDecoration(
                                                        label: Text('Title')),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20),
                                                          child: Text(
                                                              'Suggestions')),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 20),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          228,
                                                                          169,
                                                                          81),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              20))),
                                                              child: TextButton(
                                                                onPressed:
                                                                    (() {}),
                                                                child: Text(
                                                                  'Sport',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              )),
                                                          Container(
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          228,
                                                                          169,
                                                                          81),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              20))),
                                                              child: TextButton(
                                                                onPressed: () {  },
                                                                child: Text(
                                                                  'Sport',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              )),
                                                        ]),
                                                      )
                                                    ]),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 50),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20),
                                                        child: Text('Priority'),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 20),
                                                        child: Row(children: [
                                                          IconButton(
                                                              onPressed: () =>
                                                                  {expAdd = 10},
                                                              icon: Icon(
                                                                  Icons.star)),
                                                          IconButton(
                                                              onPressed: () =>
                                                                  {expAdd = 20},
                                                              icon: Icon(
                                                                  Icons.star)),
                                                          IconButton(
                                                              onPressed: () =>
                                                                  {expAdd=30},
                                                              icon: Icon(
                                                                  Icons.star)),
                                                          IconButton(
                                                              onPressed: () =>
                                                                  {expAdd=40},
                                                              icon: Icon(
                                                                  Icons.star)),
                                                          IconButton(
                                                              onPressed: () =>
                                                                  {expAdd=50},
                                                              icon: Icon(
                                                                  Icons.star)),
                                                        ]),
                                                      )
                                                    ]),
                                              ),
                                              Container(
                                                  margin:
                                                      EdgeInsets.only(top: 50),
                                                  height: 50,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 184, 135, 53),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100))),
                                                  child: TextButton(
                                                          onPressed: () {
                                                            if(!_formKey.currentState!.validate()){
                                                              return;
                                                            }else{
                                                              createPlanning(widget.user.uid!,taskName.text,expAdd);
                                                            }
                                                        },
                                                        child: Text('Add',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )))),
                                            ]),
                                          ]),
                                        )))
                              ],
                            );
                          });
                    },
                  ),
                ),
              )
            ]),
          ),
          Container(
            width: screenSize.width,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: Positioned(
                  child: Text(
                    'Task List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.35,
                child:StreamBuilder<List<Task>>(
                    stream: getTaskNotChecked(widget.user.uid!),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        var index=0;
                        final tasks=snapshot.data!;
                        return ListView(
                            controller: _controler,
                            children: tasks.map(CompletedTask).toList()
                        );
                      }else{
                        return Text('No tasks Left');
                      }

                    }
                ),
              )
            ]),
          ),
          Container(
            height: screenSize.height * 0.35,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                width: screenSize.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            'Completed',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          )),
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          margin: EdgeInsets.only(right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 169, 81),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextButton(
                            onPressed: (() {
                              var list=getTask(widget.user.uid!);
                              setScore(widget.user, list);
                            }),
                            child: Text(
                              'Validate',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ))
                    ]),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.3,
                child: Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.4,
                  margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                  child:StreamBuilder<List<Task>>(
                    stream: getTaskChecked(widget.user.uid!),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        final tasks=snapshot.data!;
                        return ListView(
                            controller: _controler,
                            children: tasks.map(toDoTask).toList()
                        );
                      }else{
                        return Text('No tasks Left');
                      }

                    }
                ),
                ),
              )
            ]),
          )
        ]),
      ),
    ));
  }
  Widget CompletedTask(Task task)=>Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(25)),
          gradient: LinearGradient(
              begin: 1 % 2 == 0
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              end: 1 % 2 == 0
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 255, 232, 197),
                Color.fromARGB(255, 228, 169, 81),
              ])),
      height: 58,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  '${task.taskName}',
                  style: TextStyle(
                      color: Colors.black, fontSize: 18),
                )),
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      task.checked=true;
                      updateTask(widget.user.uid!,task);
                    }, icon:Icon(
                      Icons.done,
                      color: Colors.green,
                    ), ),

                    Container(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: (){
                        deleteTask(widget.user.uid!,task);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    )

                  ],
                ))
          ]),
    );

  Widget toDoTask (Task task)=> Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(15),
            topRight: Radius.circular(25)),
        color: Color.fromARGB(255, 234, 234, 233)),
    width: MediaQuery.of(context).size.width * 0.5,
    height: 40,
    margin: EdgeInsets.only(top: 10),
    child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                '${task.taskName}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 5),
                child: IconButton(
                    onPressed: () {
                      task.checked=false;
                      updateTask(widget.user.uid!, task);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                    )))
          ],
        )),
  );

}