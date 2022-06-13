import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/exports/export_features.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BusinessCardViewModel>(
      vm: () => BusinessCardFactory(this),
      onInit: (store) async {},
      builder: (context, vm) => vm.unionPageState.when(
        (loginUser) => const BusinessCardScreen(),
        loading: () => const LoadingScreen(),
        error: (message) => Scaffold(body: Center(child: Text(message!))),
      ),
    );
  }
}
