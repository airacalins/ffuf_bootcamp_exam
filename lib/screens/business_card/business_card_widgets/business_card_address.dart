import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class BusinessCardAddress extends StatelessWidget {
  final String companyName;
  final String address;

  const BusinessCardAddress({
    Key? key,
    required this.companyName,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Headline2(adresse),
        const SizedBox(height: 15.0),
        Row(
          children: [
            SizedBox(
              width: 80,
              child: SvgPicture.asset(locationIcon),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headline4(companyName),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    address,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
