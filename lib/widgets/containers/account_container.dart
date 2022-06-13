import 'package:flutter/material.dart';

class AccountContainer extends StatelessWidget {
  final Widget child;

  const AccountContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 15.0,
      ),
      color: Colors.white,
      child: child,
    );
  }
}
