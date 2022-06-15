import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/icons_constant.dart';
import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class TimeTrackingScreen extends StatelessWidget {
  const TimeTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(donnerstag),
        actions: [
          Container(
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashRadius: 20.0,
              onPressed: () {},
              icon: SvgPicture.asset(calendarIconDotted),
            ),
          ),
          const SizedBox(width: 10.0),
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(addBlackIcon),
            ),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
      drawer: const SideNavPage(),
      body: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        color: Colors.white,
        child: Row(
          children: const [
            SizedBox(width: 70.0),
            RectangularSlantingEndClipper(offen),
            Headline4('12.01.2021'),
          ],
        ),
      ),
    );
  }
}
