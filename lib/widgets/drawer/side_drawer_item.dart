import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class SideDrawerItem extends StatelessWidget {
  final String activeIcon;
  final String inActiveIcon;
  final String title;
  final String navigateTo;
  final bool isActive;

  const SideDrawerItem({
    Key? key,
    required this.activeIcon,
    required this.inActiveIcon,
    required this.title,
    required this.navigateTo,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushReplacementNamed(navigateTo),
      child: Column(
        children: [
          SvgPicture.asset(isActive ? activeIcon : inActiveIcon),
          Container(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            decoration: isActive
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: purple,
                        width: 3.0,
                      ),
                    ),
                  )
                : null,
            child: Headline5(
              title,
              fontWeight: isActive ? null : FontWeight.w400,
              color: isActive ? null : textColor,
            ),
          ),
          const SizedBox(height: 25.0)
        ],
      ),
    );
  }
}
