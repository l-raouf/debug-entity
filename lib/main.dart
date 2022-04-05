import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:debug_entity/pages/home/home.dart';
import 'package:debug_entity/pages/home/contact_us.dart';

Future<void> main() async{
  //You need to init Firebase first then lunch the app!
  WidgetsFlutterBinding.ensureInitialized();
  /*await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "XXX",
    ),
  );*/
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
