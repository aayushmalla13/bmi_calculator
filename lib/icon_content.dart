import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData gender;
  final String genderinfo;
  IconContent({@required this.gender, @required this.genderinfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderinfo,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
