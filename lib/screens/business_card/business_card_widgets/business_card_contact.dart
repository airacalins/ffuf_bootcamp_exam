// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class BusinessCardContacts extends StatelessWidget {
  final String telephone;
  final String mobile;
  final String fax;
  final String email;

  const BusinessCardContacts({
    Key? key,
    required this.telephone,
    required this.mobile,
    required this.fax,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline2(kontakt),
        SizedBox(height: 15.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              child: SvgPicture.asset(userActiveIcon),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headline4('T: $telephone'),
                Headline4('F: $fax'),
                Headline4('M: $mobile'),
                Headline4('E: $email'),
                SizedBox(height: 20.0),
                Label1(
                  wwwFlutterBootcampCom,
                  color: teal,
                ),
                SizedBox(height: 15.0),
              ],
            )
          ],
        )
      ],
    );
  }
}
