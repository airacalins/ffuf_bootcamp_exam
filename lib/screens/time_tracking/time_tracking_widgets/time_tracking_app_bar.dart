import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';

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
