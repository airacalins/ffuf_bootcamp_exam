import 'package:flutter/material.dart';

class Label2 extends StatelessWidget {
  final String text;
  final Color? color;

  const Label2(
    this.text, {
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.subtitle2!.merge(TextStyle(color: color)));
  }
}
