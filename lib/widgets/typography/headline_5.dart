import 'package:flutter/material.dart';

class Headline5 extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;

  const Headline5(this.text, {Key? key, this.fontWeight, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5!.merge(
            TextStyle(
              fontWeight: fontWeight,
              color: color,
            ),
          ),
    );
  }
}
