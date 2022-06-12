import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/pages/export_pages_widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100.0),
                    SvgPicture.asset(logo),
                    const SizedBox(height: 70.0),
                    Text(
                      flutterFieldPass,
                      style: textTheme.headline5,
                    ),
                    const SizedBox(height: 75.0),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: AuthSignInButton(),
                    ),
                  ],
                ),
              ),
              const AuthFooter()
            ],
          ),
        ),
      ),
    );
  }
}
