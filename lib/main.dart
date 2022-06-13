import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_page.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_screen.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
        theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: AppText.styles,
          elevatedButtonTheme: AppButton.elevated,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const AuthPage(),
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
