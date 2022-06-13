import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';

class AccountSickDays extends StatelessWidget {
  final int sickDays;

  const AccountSickDays({
    Key? key,
    required this.sickDays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AccountContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline2(krankheitstage),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Headline5(
                insgesamt,
                fontWeight: FontWeight.w400,
              ),
              Headline5(sickDays.toString()),
            ],
          ),
          SizedBox(height: 15.0),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Text(krankheitEinreichen),
            label: SvgPicture.asset(addWhiteIcon),
          )
        ],
      ),
    );
  }
}
