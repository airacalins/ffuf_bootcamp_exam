import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/actions/side_nav_actions/set_active_side_nav_action.dart';
import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_features.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:flutter/material.dart';

class SideNavPage extends StatelessWidget {
  const SideNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SideNavViewModel>(
      vm: () => SideNavFactory(this),
      onInit: (store) async => SetActiveSideNavAction(meinKonto),
      builder: (context, vm) => SideDrawer(navName: vm.navName, setActiveNav: vm.setActiveNav),
    );
  }
}
