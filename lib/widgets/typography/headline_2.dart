import 'package:flutter/material.dart';

class Headline2 extends StatelessWidget {
  final String text;

  const Headline2(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      text,
      style: textTheme.headline2,
    );
  }
}
