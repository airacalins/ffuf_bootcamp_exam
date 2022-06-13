import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

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
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              child: SvgPicture.asset(calendarIcon),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headline5(subtitle),
                const SizedBox(height: 5.0),
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
