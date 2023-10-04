import 'package:flutter/material.dart';
import 'package:quran_kareem/views/home/v_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: VHome(),
      debugShowCheckedModeBanner: false,
      title: "اية و قيمة",
    );
  }
}
