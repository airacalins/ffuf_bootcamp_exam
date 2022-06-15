import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/actions/side_nav_actions/set_active_side_nav_action.dart';

import 'package:ffuf_bootcamp_exam/exports/export_features.dart';
import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class SideNavFactory extends VmFactory<AppState, SideNavPage> {
  SideNavFactory(super.widget);

  @override
  Vm? fromStore() => SideNavViewModel(
        navName: state.activeSideNav,
        setActiveNav: (String navName) => dispatch(SetActiveSideNavAction(navName)),
      );
}
