// ignore_for_file: unnecessary_const

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/widgets/custom_clipper/rectangular_slanting_end.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final String title;
  final String fullName;
  final String imageUrl;
  final String email;
  final String? position;
  final String? mobile;

  const UserDetails({
    Key? key,
    required this.title,
    required this.fullName,
    required this.imageUrl,
    required this.email,
    this.position,
    this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline2(title),
        Row(
          children: [
            Container(
              width: 70,
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                radius: 30,
              ),
            ),
            const SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Headline4(fullName),
                Label1(email),
                const SizedBox(height: 10.0),
                position != null ? Label1(position!) : RectangularSlantingEndClipper(title: 'jfkajfka;l'),
              ],
            )
          ],
        )
      ],
    );
  }
}
