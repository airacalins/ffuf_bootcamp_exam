import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/features/account/account_page.dart';
import 'package:ffuf_bootcamp_exam/features/account/account_view_model.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class AccountFactory extends VmFactory<AppState, AccountPage> {
  AccountFactory(super.widget);

  @override
  Vm? fromStore() => AccountViewModel(
        unionPageState: _getLoadingState(),
      );

  UnionPageState<User?> _getLoadingState() {
    if (state.loginUser == null) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.loginUser);
    }
  }
}
