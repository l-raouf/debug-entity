import 'package:debug_entity/models/user-model.dart';
import 'package:debug_entity/services/userServices.dart';
import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}
class _LeaderBoardState extends State<LeaderBoard> {
  final index=0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: screenSize.height * 0.85,
            width: screenSize.width,
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 20),
                alignment: Alignment.topLeft,
                child: Positioned(
                  child: Text(
                    'LeaderBoard',
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 27, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                alignment: Alignment.topLeft,
                child: Positioned(
                  child: Text(
                    'Top 3',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 180, 178, 178)),
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.3,
                child:StreamBuilder<List<UserModel>>(
                    stream: getTop3(),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        final users= snapshot.data!;
                        var index=0;
                        return ListView(
                          children: users.map(buildUser).toList(),
                        );
                      }else{
                        return const Text("No One is ranking, be the first");
                      }
                  }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Positioned(
                  child: Text(
                    'Full LeaderBoard',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 180, 178, 178)),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.435,
                child: StreamBuilder<List<UserModel>>(
                    stream: getTop10(),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        final users= snapshot.data!;
                        var index=0;
                        return ListView(
                          children: users.map(buildRest).toList(),
                        );
                      }else{
                        return const Text("No One is ranking, be the first");
                      }
                }),
              )

            ]),
          )),
    );
  }
  Widget buildUser(UserModel user) {
    return Container(
      height: 58,
      width: MediaQuery.of(context).size.width * 0.3,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              '${user.username}',
              style: TextStyle(
                  color: Color.fromARGB(255, 90, 90, 90),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
          ),
          Container(
            child: Text(
              '${user.exp}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset('assets/GoldMedal.png'),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(25)),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(255, 253, 251, 251),
              Color.fromARGB(255, 238, 241, 78)
            ],
          )),
    );
  }
  Widget buildRest(UserModel user)=>Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(25)),
              color: Color.fromARGB(255, 228, 228, 226)),
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
                      '${user.username}',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 90, 90, 90),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      '${user.exp}',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )),
        );
}
