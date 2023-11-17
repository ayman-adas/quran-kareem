import 'package:flutter/material.dart';
import 'package:quran_kareem/Widget/w_reminder_button.dart';
import 'package:quran_kareem/model/m_names.dart';
import 'package:quran_kareem/model/m_url_name.dart';

class CReminder extends StatelessWidget {
  const CReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://1.bp.blogspot.com/-e5AlCTBbLwQ/YQfSNwK6XfI/AAAAAAAA2hk/QlR6VCZbHg0B0GSQzY1rby7BWTOT6sHOQCLcBGAsYHQ/s846/5ac4d962a669ed6c1525b86b2b9cadbd.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(9)),
              color: Colors.transparent,
            ),
            width: 400,
            height: 50,
            margin: const EdgeInsets.fromLTRB(80, 200, 0, 0),
            child: const Text(
              "اختر الاذكار التي تريدها",
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            )),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 218, 211, 190),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          height: 45,
          width: 180,
          margin: const EdgeInsets.fromLTRB(13, 290, 0, 0),
          child: const WReminderButton(
              backGround: Colors.transparent,
              foreGround: Color.fromARGB(255, 255, 255, 255),
              icon: Icons.sunny,
              url: MUrlName.remindMorning,
              label: MNames.remindMorning),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 218, 211, 190),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          height: 45,
          width: 180,
          margin: const EdgeInsets.fromLTRB(203, 290, 0, 0),
          child: const WReminderButton(
              backGround: Colors.transparent,
              foreGround: Color.fromARGB(255, 255, 255, 255),
              icon: Icons.nightlight_outlined,
              url: MUrlName.reminderNight,
              label: MNames.remindNIght),
        ),
      ]),
    );
   
  }
}
