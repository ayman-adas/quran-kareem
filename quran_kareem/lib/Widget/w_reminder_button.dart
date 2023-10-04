import 'package:flutter/material.dart';
import 'package:quran_kareem/views/web_view/v_web.dart';

class WReminderButton extends StatelessWidget {
  const WReminderButton(
      {super.key,
      required this.foreGround,
      required this.icon,
      required this.url,
      required this.label,
      this.backGround});
  final Color? foreGround;
  final Color? backGround;
  final String label;
  final String url;
  final IconData icon;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          MaterialPageRoute route =
              MaterialPageRoute(builder: (context) => VWebView(url: url));
          Navigator.push(context, route);
        },
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(100, 20),
            foregroundColor: (foreGround),
            backgroundColor: backGround,
            textStyle: const TextStyle(fontSize: 17)));
  }
}
