import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_view_model.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens_widgets.dart';

class AuthScreen extends StatelessWidget {
  final Function onLogin;

  const AuthScreen({
    Key? key,
    required this.onLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 100.0),
                SvgPicture.asset(logo),
                const SizedBox(height: 70.0),
                Text(
                  flutterFieldPass,
                  style: textTheme.headline5,
                ),
                const SizedBox(height: 75.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: AuthSignInButton(onLogin),
                ),
              ],
            ),
          ),
          const AuthFooter()
        ],
      ),
    );
  }
}
