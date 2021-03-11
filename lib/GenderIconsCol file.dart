import 'package:flutter/material.dart';
import 'constantProp.dart';

class GenderIconsCol extends StatelessWidget {
  GenderIconsCol({@required this.iconsData, this.label});
  final IconData iconsData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconsData,
          size: 75.0,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: cLabelStyle,
        ),
      ],
    );
  }
}
