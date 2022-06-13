import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';

class ReportSummary extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonTitle;

  const ReportSummary({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline2(title),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              child: SvgPicture.asset(calendarIcon),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headline5(subtitle),
                SizedBox(height: 5.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Text(buttonTitle),
                  label: SvgPicture.asset(sendWhiteIcon),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
