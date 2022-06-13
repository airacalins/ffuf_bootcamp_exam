import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/actions/export_actions.dart';
import 'package:ffuf_bootcamp_exam/exports/export_features.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(
      vm: () => AuthFactory(this),
      onInit: (store) async => await store.dispatch(FetchUsers()),
      builder: (context, vm) => vm.unionPageState.when(
        (users) => AuthScreen(onLogin: vm.onLogin),
        loading: () => const LoadingScreen(),
        error: (message) => Scaffold(body: Center(child: Text(message!))),
      ),
    );
  }
}
