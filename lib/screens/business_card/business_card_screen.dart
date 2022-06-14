import 'package:dio/dio.dart';
import 'package:ffuf_bootcamp_exam/constants/icons_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
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
              Tab(
                child: Container(
                  child: Headline4(meineVisitenkarte),
                ),
              ),
              Tab(
                child: Container(
                  child: Headline4(vorgesetzte),
                ),
              ),
            ],
          ),
        ),
        drawer: SideDrawer(),
        body: TabBarView(
          children: <Widget>[
            AccountContainer(
              child: Column(
                children: [
                  UserDetails(
                    title: visitenkarte,
                    fullName: 'fullName',
                    imageUrl: 'imageUrl',
                    email: 'email',
                    position: 'a',
                  ),
                  SizedBox(height: 20.0),
                  Image.asset('assets/images/qr.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Headline2(adresse),
                      Row(
                        children: [
                          SvgPicture.asset(locationIcon),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Flutter Bootcamp'),
                              Text('6783 Ayala Ave'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 1000.0,
                color: Colors.purple.shade200,
                child: Center(
                  child: Text('Hi'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
