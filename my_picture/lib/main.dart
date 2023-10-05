import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/layout.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ayman", debugShowCheckedModeBanner: false, home: const Home(),);
  }
}
