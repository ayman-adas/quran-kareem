import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/layout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.move),
      //  backgroundColor: const Colors.fromARGB(94, 109, 111, 3),
       // foregroundColor: const Color.fromARGB(255, 255, 255, 253),
        actions: const [
          Icon(CupertinoIcons.delete),
          Icon(Icons.add),
          Icon(Icons.bookmark)
        ],
        title: Center(child: Text("Ayman")),
      ),
      body:layout() 
    );
  }
}
