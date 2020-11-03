import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          icon,
          size: 70,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}