import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HolidayScreen extends StatelessWidget {
  const HolidayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideNavPage(),
      body: const Center(child: Text(urlaub)),
    );
  }
}
