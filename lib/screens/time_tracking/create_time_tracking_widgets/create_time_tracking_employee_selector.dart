import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class CreateTimeTrackingEmployeeSelector extends StatelessWidget {
  const CreateTimeTrackingEmployeeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Headline2(
              mitarbeiter,
              fontFamily: 'Allerta Stencil',
            ),
            Label1(
              hinzufugenOderBearbeiten,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: Colors.black,
            child: SvgPicture.asset(addWhiteIcon),
          ),
        ),
      ],
    );
  }
}
