import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/business_card/business_card_factory.dart';
import 'package:ffuf_bootcamp_exam/features/business_card/business_card_view_model.dart';
import 'package:ffuf_bootcamp_exam/screens/business_card/business_card_screen.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/screens/export_screens.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BusinessCardViewModel>(
      vm: () => BusinessCardFactory(this),
      onInit: (store) async {},
      builder: (context, vm) => vm.unionPageState.when(
        (loginUser) => BusinessCardScreen(),
        loading: () => const LoadingScreen(),
        error: (message) => Scaffold(body: Center(child: Text(message!))),
      ),
    );
  }
}
