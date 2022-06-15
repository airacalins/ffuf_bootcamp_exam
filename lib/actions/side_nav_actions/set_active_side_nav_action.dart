// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class SetActiveSideNavAction extends ReduxAction<AppState> {
  final String navName;

  SetActiveSideNavAction(this.navName);

  @override
  Future<AppState?> reduce() async {
    try {
      return state.copyWith(activeSideNav: navName);
    } on Exception catch (e) {
      print(e);
    }
    return state;
  }
}
