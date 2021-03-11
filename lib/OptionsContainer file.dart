import 'package:flutter/material.dart';

class OptionsContainer extends StatelessWidget {
  OptionsContainer({@required this.c, this.cardWidget, this.pressFunc});
  final Color c;
  final Widget cardWidget;
  final Function pressFunc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressFunc,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardWidget,
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class IncDecBtn extends StatelessWidget {
  IncDecBtn({@required this.iconData, @required this.onPress});
  final IconData iconData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(iconData),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 35.0,
        width: 35.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF946e9c),
    );
  }
}
