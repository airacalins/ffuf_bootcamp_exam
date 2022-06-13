import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_view_model.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_factory.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_view_model.dart';
import 'package:ffuf_bootcamp_exam/screens/app/loading_screen.dart';
import 'package:ffuf_bootcamp_exam/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:ffuf_bootcamp_exam/actions/export_actions.dart';

import 'auth_factory.dart';

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
