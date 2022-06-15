import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_models.dart';
import 'package:ffuf_bootcamp_exam/exports/export_screens_widgets.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class BusinessCardTabView extends StatelessWidget {
  final String title;
  final User user;

  const BusinessCardTabView({
    Key? key,
    required this.title,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AccountContainer(
            child: Column(
              children: [
                UserDetails(
                  title: visitenkarte,
                  fullName: '${user.firstName} ${user.lastName}',
                  imageUrl: user.imageUrl,
                  email: user.email,
                  position: user.position,
                ),
                const SizedBox(height: 20.0),
                Image.asset('assets/images/qr.png'),
                const SizedBox(height: 30.0),
                BusinessCardAddress(
                  companyName: user.companyName,
                  address: user.address,
                ),
                const SizedBox(height: 30.0),
                BusinessCardContacts(
                  telephone: user.telephone,
                  mobile: user.mobile,
                  fax: user.fax,
                  email: 'www.flutter-bootcamp.com',
                ),
              ],
            ),
          ),
          const SizedBox(height: 500.0),
        ],
      ),
    );
  }
}
