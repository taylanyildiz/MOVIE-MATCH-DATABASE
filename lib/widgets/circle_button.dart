import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;
  final double iconSize;
  const CircleButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: Colors.white,
      onPressed: onPressed,
      iconSize: iconSize,
    );
  }
}
