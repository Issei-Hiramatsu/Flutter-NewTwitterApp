import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({
    super.key,
    required this.text,
    required this.textStyle,
  });

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle);
  }
}
