import 'package:flutter/material.dart';

class Label1 extends StatelessWidget {
  final String text;

  const Label1(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      text,
      style: textTheme.subtitle1,
    );
  }
}
