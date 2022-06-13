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
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 15.0,
      ),
      color: Colors.white,
      child: child,
    );
  }
}
