import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      body: Center(child: Text('Business Card')),
    );
  }
}
