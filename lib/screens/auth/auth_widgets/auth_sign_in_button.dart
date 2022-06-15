import 'package:ffuf_bootcamp_exam/routes/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';

class AuthSignInButton extends StatelessWidget {
  final Function onLogin;

  const AuthSignInButton(
    this.onLogin, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onLogin();
        Navigator.of(context).pushNamed(RouteManager.accountPage);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 3.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(microsoftIcon),
                  const SizedBox(width: 10.0),
                  const Text(
                    signInWithMicrosoft,
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(doubleForwardArrowIcon)
          ],
        ),
      ),
    );
  }
}
