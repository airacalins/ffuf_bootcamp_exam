import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';

class AccountCurrentBudget extends StatelessWidget {
  final int currentBudget;

  const AccountCurrentBudget({
    Key? key,
    required this.currentBudget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10.0,
      ),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(aktuellesBudget),
          CircleAvatar(
            backgroundColor: yellow,
            child: Text(
              currentBudget.toString(),
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
