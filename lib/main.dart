import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  //You need to init Firebase first then lunch the app!
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "XXX",
    ),
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Entity'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: const Center(
        child: Text('Debug Entity'),
      ),
    );
  }
}
