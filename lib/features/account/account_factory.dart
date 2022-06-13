import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/features/account/account_page.dart';
import 'package:ffuf_bootcamp_exam/features/account/account_view_model.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class AccountFactory extends VmFactory<AppState, AccountPage> {
  AccountFactory(super.widget);

  @override
  Vm? fromStore() => AccountViewModel(
        users: state.users,
        loggedInUser: state.loggedInUser!,
        superior: state.users
            .where(
              (user) => user.id == state.loggedInUser!.superiorId,
            )
            .first,
      );
}
