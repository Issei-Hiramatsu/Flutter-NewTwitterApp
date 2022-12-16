import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.iconData,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final Color backgroundColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: backgroundColor),
        color: backgroundColor,
      ),
      child: IconButton(
        icon: Icon(iconData),
        splashRadius: 40,
        onPressed: () {
          onPressed;
        },
      ),
    );
  }
}
