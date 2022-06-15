import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';

class SideDrawerAppBar extends StatelessWidget {
  const SideDrawerAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(closeIcon),
        iconSize: 15.0,
      ),
      actions: [
        Container(
          height: 20.0,
          width: 20.0,
          margin: const EdgeInsets.only(right: 30.0),
          child: SvgPicture.asset(logo),
        )
      ],
    );
  }
}
