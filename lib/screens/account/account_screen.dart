import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_models.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens_widgets.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class AccountScreen extends StatelessWidget {
  final User user;
  final User superior;

  const AccountScreen({
    Key? key,
    required this.user,
    required this.superior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideNavPage(),
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
                    imageUrl: user.imageUrl,
                  ),
                  const SizedBox(height: 30.0),
                  UserDetails(
                    title: vorgesetzter,
                    fullName: '${superior.firstName} ${superior.lastName}',
                    imageUrl: superior.imageUrl,
                    email: superior.email,
                    mobile: superior.mobile,
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
            AccountOverview(
              annualLeave: user.annualLeave,
              remainingVacationEpos: user.remainingVacationEpos,
              requested: user.requested,
              carryoverFromPreviousYear: user.carryoverFromPreviousYear,
            ),
            AccountCurrentBudget(currentBudget: user.currentBudget),
            AccountSickDays(sickDays: user.sickDays),
            AzAccount(
              accumulatedHours: user.totalHours - user.accumulatedHours,
              totalHours: user.totalHours,
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
