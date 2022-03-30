import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

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
