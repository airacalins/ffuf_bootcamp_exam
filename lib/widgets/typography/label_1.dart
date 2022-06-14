import 'package:flutter/material.dart';

class Label1 extends StatelessWidget {
  final String text;
  final Color? color;

  const Label1(
    this.text, {
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .merge(TextStyle(color: color)));
  }
}
