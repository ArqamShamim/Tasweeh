import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({this.onPress, this.icon});
  final Function onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(
        icon,
        color: Colors.white,
        size: 50.0,
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.teal[600],
    );
  }
}
