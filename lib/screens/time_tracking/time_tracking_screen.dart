import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';
import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';

class TimeTrackingScreen extends StatelessWidget {
  const TimeTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TimeTrackingAppBar(appBar: AppBar()),
      drawer: const SideNavPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
            Container(
              margin: const EdgeInsets.all(10.0),
              child: SfCalendar(
                view: CalendarView.day,
                headerDateFormat: 'E',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeTrackingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const TimeTrackingAppBar({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            splashRadius: 22.0,
            onPressed: () => Navigator.of(context).pushNamed(RouteManager.createTimeTrackingPage),
            icon: SvgPicture.asset(addBlackIcon),
          ),
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
