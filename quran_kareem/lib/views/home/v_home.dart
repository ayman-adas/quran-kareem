import 'package:flutter/material.dart';
import 'package:quran_kareem/Widget/w_app_bar.dart';
import 'package:quran_kareem/Widget/w_buttom_bar.dart';
import 'package:quran_kareem/controller/c_reminder.dart';
import 'package:quran_kareem/model/m_url_name.dart';
import 'package:quran_kareem/views/web_view/v_web.dart';

class VHome extends StatefulWidget {
  const VHome({super.key});

  @override
  State<VHome> createState() => _VHomeState();
}

class _VHomeState extends State<VHome> {
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: value);
  }

  int value = 0;
  final List<Widget> pages = [
    VWebView(
      url: MUrlName.quran,
    ),
    VWebView(
      url: MUrlName.sound,
    ),
    VWebView(
      url: MUrlName.tafser,
    ),
    const CReminder(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WAppBar(),
      bottomNavigationBar: WButtomBar(
        value: value,
        callBack: (newIndex) {
          /// set new index include [currentSelected]
          value = newIndex;
          // controller page view
          controller.animateToPage(
            value,
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
          );
          // reDraw
          setState(() {});
        },
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          this.value = value;
          setState(() {});
        },
        scrollBehavior: const MaterialScrollBehavior(),
        allowImplicitScrolling: false,
        clipBehavior: Clip.antiAlias,
        pageSnapping: false,
        children: pages,
      ),
    );
  }
}
