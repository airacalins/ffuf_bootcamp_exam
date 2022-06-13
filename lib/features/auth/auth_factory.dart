import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/actions/users_actions/set_login_user.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_page.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_view_model.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class AuthFactory extends VmFactory<AppState, AuthPage> {
  AuthFactory(super.widget);

  @override
  Vm? fromStore() => AuthViewModel(
        unionPageState: _getLoadingState(),
        onLogin: () => dispatch(SetLoginUser()),
      );

  UnionPageState<List<User>> _getLoadingState() {
    if (state.users.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.users);
    }
  }
}
