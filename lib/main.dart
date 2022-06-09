import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/screens/projects/project_assignment/project_assignment_screen.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Store<AppState>(initialState: AppState.initialState());

    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
        home: ProjectAssignmentScreen(),
      ),
    );
  }
}
