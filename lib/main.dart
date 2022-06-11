import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_screen.dart';
import 'package:ffuf_bootcamp_exam/pages/auth/auth_page.dart';
import 'package:ffuf_bootcamp_exam/themes/button_styles.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:ffuf_bootcamp_exam/states/app_state.dart';

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
          elevatedButtonTheme: ButtonStyles.elevatedButton,
        ),
        debugShowCheckedModeBanner: false,
        // home: ProjectAssignmentScreen(),
        home: const AuthPage(),
      ),
    );
  }
}
