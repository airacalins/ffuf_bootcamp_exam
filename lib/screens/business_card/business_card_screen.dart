import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideDrawer(),
      body: Center(child: Text('Business Card')),
    );
  }
}
