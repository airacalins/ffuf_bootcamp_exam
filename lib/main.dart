import 'package:async_redux/async_redux.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';
import 'package:ffuf_bootcamp_exam/pages/export_pages.dart';
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
        theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: AppText.styles,
          elevatedButtonTheme: AppButton.elevated,
        ),
        debugShowCheckedModeBanner: false,
        // home: ProjectAssignmentScreen(),
        home: const AuthPage(),
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
