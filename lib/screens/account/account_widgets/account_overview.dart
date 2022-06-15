import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class AccountOverview extends StatelessWidget {
  final int annualLeave;
  final int remainingVacationEpos;
  final int requested;
  final int carryoverFromPreviousYear;

  const AccountOverview({
    Key? key,
    required this.annualLeave,
    required this.remainingVacationEpos,
    required this.requested,
    required this.carryoverFromPreviousYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AccountContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline2('$ubersicht 2021'),
              SvgPicture.asset(treeIcon),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline5(
                jahresurlaub,
                fontWeight: FontWeight.w400,
              ),
              Headline5(annualLeave.toString()),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline5(
                resturlaubEPOS,
                fontWeight: FontWeight.w400,
              ),
              Headline5(remainingVacationEpos.toString()),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline5(
                beantragt,
                fontWeight: FontWeight.w400,
              ),
              Headline5(requested.toString()),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Headline5(
                ubertragVorjahr,
                fontWeight: FontWeight.w400,
              ),
              Headline5(remainingVacationEpos.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
