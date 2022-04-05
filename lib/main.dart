import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:debug_entity/pages/home/home.dart';

Future<void> main() async{
  //You need to init Firebase first then lunch the app!
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
