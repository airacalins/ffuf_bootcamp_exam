import 'package:flutter/material.dart';

class Headline2 extends StatelessWidget {
  final String text;
  final String? fontFamily;

  const Headline2(this.text, {Key? key, this.fontFamily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline2!
          .merge(TextStyle(fontFamily: fontFamily)),
    );
  }
}
