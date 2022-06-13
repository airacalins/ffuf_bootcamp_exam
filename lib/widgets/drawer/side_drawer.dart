import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';
import 'package:ffuf_bootcamp_exam/widgets/drawer/side_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.only(right: 30.0),
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
                children: const [
                  SideDrawerItem(
                    activeIcon: userActiveIcon,
                    inActiveIcon: userInactiveIcon,
                    title: meinKonto,
                    isActive: true,
                    navigateTo: RouteManager.accountPage,
                  ),
                  SideDrawerItem(
                    activeIcon: businessCardActiveIcon,
                    inActiveIcon: businessCardInactiveIcon,
                    title: vielenDank,
                    isActive: false,
                    navigateTo: RouteManager.authPage,
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
