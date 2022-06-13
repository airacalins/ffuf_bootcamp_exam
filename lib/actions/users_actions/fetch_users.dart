import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/firebase_services/user_services.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class FetchUsers extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    try {
      final userService = UserServices();
      await userService.fetchUsers();
      final users = userService.users;
      print("users");
      print(users);
      return state.copyWith(users: users);
    } on Exception catch (e) {
      print(e);
    }
    return state;
  }
}
