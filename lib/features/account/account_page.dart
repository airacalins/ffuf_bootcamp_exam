import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/actions/users_actions/set_login_user.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/features/account/account_factory.dart';
import 'package:ffuf_bootcamp_exam/features/account/account_view_model.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AccountViewModel>(
      vm: () => AccountFactory(this),
      onInit: (store) async {},
      builder: (context, vm) => AccountScreen(user: vm.loggedInUser, superior: vm.superior),
    );
  }
}
