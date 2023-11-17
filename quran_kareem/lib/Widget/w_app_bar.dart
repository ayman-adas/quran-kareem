import 'package:flutter/material.dart';
import 'package:quran_kareem/model/m_names.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WAppBar({super.key});

  @override
  //app bar title and background color
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: const Text(
        (MNames.appName),
      ),
      centerTitle: true,
      actions: const [
        Icon(Icons.book_online),
      ],
      backgroundColor: const Color.fromARGB(162, 225, 209, 160),
    );
  }
//
  @override //size of appbar in a phone
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
