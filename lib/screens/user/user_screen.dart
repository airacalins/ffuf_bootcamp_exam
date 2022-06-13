// ignore_for_file: prefer_const_constructors
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/widgets/containers/account_container.dart';
import 'package:ffuf_bootcamp_exam/widgets/custom_clipper/rectangular_slanting_end.dart';
import 'package:ffuf_bootcamp_exam/widgets/items/user_details.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:ffuf_bootcamp_exam/widgets/export_widgets.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      drawer: SideDrawer(),
      body: AccountContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            UserDetails(
              title: meinKonto,
              fullName: 'Greg Neu',
              email: 'max.mustermann@bkl.de',
              position: 'Monteur',
            ),
            SizedBox(height: 30.0),
            UserDetails(
              title: vorgesetzter,
              fullName: 'Greg Neu',
              email: 'max.mustermann@bkl.de',
              mobile: '11--22--222',
            ),
          ],
        ),
      ),
    );
  }
}
