import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class layout extends StatelessWidget {
  const layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Image(
        image: AssetImage("assest/٢٠٢٢١٠٠١_١٣١٤٤٩.jpg"),
        width: double.maxFinite,
        height: double.maxFinite,
      ),
      color: Colors.green,
    );
  }
}
