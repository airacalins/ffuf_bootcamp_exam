import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/icons_constant.dart';
import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens_widgets.dart';

class CreateTimeTrackingScreen extends StatelessWidget {
  const CreateTimeTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset(closeIcon),
            iconSize: 15.0,
          ),
          actions: [
            Container(
              height: 20.0,
              width: 20.0,
              margin: const EdgeInsets.only(right: 30.0),
              child: SvgPicture.asset(logo),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  unselectedLabelColor: unselectedTabLabelColor,
                  indicator: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/selected_tab_bg.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border(
                      bottom: BorderSide(
                        color: purple,
                        width: 3.0,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(child: Headline4(arbeitszeit)),
                    Tab(child: Headline4(pause)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CreateTimeTrackingDropdown(
                            title: kategorie,
                            hint: wahlenSieBitteKategorieAus,
                            options: ['One', 'Two', 'Three'],
                          ),
                          SizedBox(height: 15.0),
                          CreateTimeTrackingDropdown(
                            title: projektnummer,
                            hint: projektnummerHinzufugen,
                            options: ['One', 'Two', 'Three'],
                          ),
                          SizedBox(height: 15.0),
                          CreateTimeTrackingEmployeeSelector(),
                          SizedBox(height: 15.0),
                          CreateTimeTrackingComment(),
                        ],
                      ),
                    ),
                  ),
                  Center(child: Text('Pause'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
