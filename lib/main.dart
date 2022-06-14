import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens.dart';
import 'package:ffuf_bootcamp_exam/features/business_card/business_card_page.dart';
import 'package:ffuf_bootcamp_exam/screens/business_card/business_card_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/features/auth/auth_page.dart';
import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:ffuf_bootcamp_exam/themes/export_themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Store<AppState>(initialState: AppState.initialState());

    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: AppTheme.customStyles,
        debugShowCheckedModeBanner: false,
        // home: CreateJobRecordScreen(),
        home: const AuthPage(),
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
