import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class SetLoginUser extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    try {
      return state.copyWith(loggedInUser: state.users.first);
    } on Exception catch (e) {
      print(e);
    }
    return state;
  }
}
