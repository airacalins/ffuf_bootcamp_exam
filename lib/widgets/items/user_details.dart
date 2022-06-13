import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

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
            SizedBox(
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
                position != null ? Label1(position!) : RectangularSlantingEndClipper(title: mobile!),
              ],
            )
          ],
        )
      ],
    );
  }
}
