import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens_widgets.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';

class AccountScreen extends StatelessWidget {
  final User user;

  const AccountScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AccountContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserDetails(
                    title: meinKonto,
                    fullName: '${user.firstName} ${user.lastName}',
                    email: user.email,
                    position: user.position,
                    imageUrl: '',
                  ),
                  const SizedBox(height: 30.0),
                  const UserDetails(
                    title: vorgesetzter,
                    fullName: 'Greg Neu',
                    imageUrl: '',
                    email: 'max.mustermann@bkl.de',
                    mobile: '11--22--222',
                  ),
                  const SizedBox(height: 30.0),
                  const ReportSummary(
                    title: wochenbericht,
                    subtitle: '12.03 - 19.03.2021',
                    buttonTitle: wochenberichtZuschicken,
                  ),
                  const SizedBox(height: 15.0),
                  const ReportSummary(
                    title: monatsbericht,
                    subtitle: 'April 2020',
                    buttonTitle: monatsberichtErstellen,
                  ),
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
            const AccountOverview(
              annualLeave: 25,
              remainingVacationEpos: 10,
              requested: 08,
              carryoverFromPreviousYear: 01,
            ),
            const AccountCurrentBudget(currentBudget: 7),
            const AccountSickDays(sickDays: 05),
            const AzAccount(
              accumulatedHours: 100,
              totalHours: 250,
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
