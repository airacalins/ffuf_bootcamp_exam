import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';
import 'package:ffuf_bootcamp_exam/widgets/drawer/side_drawer_item.dart';

class SideDrawer extends StatelessWidget {
  final String navName;
  final Function setActiveNav;

  const SideDrawer({
    Key? key,
    required this.navName,
    required this.setActiveNav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
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
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SideDrawerItem(
                    activeIcon: userActiveIcon,
                    inActiveIcon: userInactiveIcon,
                    title: meinKonto,
                    isActive: navName == meinKonto,
                    navigateTo: RouteManager.accountPage,
                    onTap: () => setActiveNav(meinKonto),
                  ),
                  SideDrawerItem(
                    activeIcon: businessCardActiveIcon,
                    inActiveIcon: businessCardInactiveIcon,
                    title: vielenDank,
                    isActive: navName == vielenDank,
                    navigateTo: RouteManager.businessCardPage,
                    onTap: () => setActiveNav(vielenDank),
                  ),
                  SideDrawerItem(
                    activeIcon: timeTrackingActiveIcon,
                    inActiveIcon: timeTrackingInactiveIcon,
                    title: zeiterfassung,
                    isActive: navName == zeiterfassung,
                    navigateTo: RouteManager.timeTrackingPage,
                    onTap: () => setActiveNav(zeiterfassung),
                  ),
                  SideDrawerItem(
                    activeIcon: betActiveIcon,
                    inActiveIcon: betInactiveIcon,
                    title: meineEinsatze,
                    isActive: navName == meineEinsatze,
                    navigateTo: RouteManager.businessCardPage,
                    onTap: () => setActiveNav(meineEinsatze),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
