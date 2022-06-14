import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_models.dart';
import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens_widgets.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class BusinessCardScreen extends StatelessWidget {
  final User loggedInUser;
  final User superior;

  const BusinessCardScreen({
    Key? key,
    required this.loggedInUser,
    required this.superior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        drawer: const SideDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 50,
              child: AppBar(
                bottom: const TabBar(
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
                    Tab(child: Headline4(meineVisitenkarte)),
                    Tab(child: Headline4(vorgesetzte)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BusinessCardTabView(
                    title: meineVisitenkarte,
                    user: loggedInUser,
                  ),
                  BusinessCardTabView(
                    title: vorgesetzte,
                    user: superior,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
