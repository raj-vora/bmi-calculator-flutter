import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0
      ),
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
      shape: CircleBorder(),
    );
  }
}