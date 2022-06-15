import 'package:ffuf_bootcamp_exam/constants/icons_constant.dart';
import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateJobRecordScreen extends StatelessWidget {
  const CreateJobRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(closeIcon),
          iconSize: 15.0,
        ),
        actions: [
          Container(
            height: 20.0,
            width: 20.0,
            margin: const EdgeInsets.only(right: 30.0),
            child: SvgPicture.asset(logo),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Headline2(
              kategorie,
              fontFamily: 'Allerta Stencil',
            ),
          ],
        ),
      ),
    );
  }
}
