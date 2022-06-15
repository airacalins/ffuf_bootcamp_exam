import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class CreateTimeTrackingComment extends StatelessWidget {
  const CreateTimeTrackingComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.grey.shade200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  right: 10.0,
                  bottom: 30.0,
                ),
                child: const CircleAvatar(backgroundColor: Colors.red),
              ),
              Label1(
                bemerkungHinzufugen,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(abbrechen),
            ),
            SizedBox(width: 10.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Text(speichern),
              label: SvgPicture.asset(sendWhiteIcon),
            )
          ],
        )
      ],
    );
  }
}
