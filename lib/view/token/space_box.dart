import 'package:flutter/material.dart';

class SpaceBox extends SizedBox {
  const SpaceBox({super.key, double super.width = 8, double super.height = 8});

  const SpaceBox.width([double value = 8]) : super(width: value);
  const SpaceBox.height([double value = 8]) : super(height: value);
}
