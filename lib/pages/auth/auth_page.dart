// ignore_for_file: prefer_const_constructors

import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(logo),
                  Text(flutterFieldPass),
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset(microsoftIcon),
                        Text(signInWithMicrosoft),
                        SvgPicture.asset(doubleForwardArrowIcon)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(impressum),
                  Text(datenschutz),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
