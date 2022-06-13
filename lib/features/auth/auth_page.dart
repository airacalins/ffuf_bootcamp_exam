import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/actions/export_actions.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_factory.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_view_model.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(
      vm: () => AuthFactory(this),
      onInit: (store) async {
        print("fetchig");
        await store.dispatch(FetchUsers());
      },
      builder: (context, vm) => AuthScreen(vm),
    );
  }
}
