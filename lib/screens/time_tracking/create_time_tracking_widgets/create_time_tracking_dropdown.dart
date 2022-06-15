import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ffuf_bootcamp_exam/exports/export_constants.dart';
import 'package:ffuf_bootcamp_exam/exports/export_widgets.dart';

class CreateTimeTrackingDropdown extends StatelessWidget {
  final String title;
  final String hint;
  final List<String> options;

  const CreateTimeTrackingDropdown({
    Key? key,
    required this.title,
    required this.hint,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline2(
          title,
          fontFamily: 'Allerta Stencil',
        ),
        DropdownButton<String>(
          isExpanded: true,
          hint: Text(hint),
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SvgPicture.asset(doubleDownArrowIcon),
          ),
          elevation: 16,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          underline: Container(
            height: 2,
            color: Colors.grey.shade300,
          ),
          onChanged: (String? newValue) {},
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      ],
    );
  }
}
