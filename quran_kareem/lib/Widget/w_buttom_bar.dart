import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:quran_kareem/model/m_names.dart';
//buttom bar background color and icons
class WButtomBar extends StatelessWidget {
  const WButtomBar(
      {super.key, required this.value, required this.callBack(value)});
  final int value;
  final void Function(int value) callBack;
  final List<String> a = const [
    MNames.quran,
    MNames.sound,
    MNames.desbline,
    MNames.remind,
  ];

  @override
  Widget build(BuildContext context) {
    MotionTabBarController? motionTabBarController;

    return MotionTabBar(
      controller:
          motionTabBarController, // ADD THIS if you need to change your tab programmatically
      initialSelectedTab: a[value],
      labels: a,
      icons: const [
        Icons.book,
        Icons.music_note,
        Icons.description,
        Icons.remember_me,
      ],

      //  length must be same with labels

      tabSize: 50,
      tabBarHeight: 55,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: const Color.fromARGB(230, 110, 114, 117),
      tabIconSize: 28.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor: const Color.fromARGB(130, 207, 209, 212),
      tabIconSelectedColor: Colors.white,
      tabBarColor: const Color(0xFFAFAFAF),
      onTabItemSelected: callBack,
    );
  }
}
