import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';

class AzAccount extends StatelessWidget {
  final int accumulatedHours;
  final int totalHours;

  const AzAccount({
    Key? key,
    required this.accumulatedHours,
    required this.totalHours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AccountContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline2(azKonto),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline5(
                stunden,
                fontWeight: FontWeight.w400,
              ),
              Headline5('$accumulatedHours / $totalHours'),
            ],
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
