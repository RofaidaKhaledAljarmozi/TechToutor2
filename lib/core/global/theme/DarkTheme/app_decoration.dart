import 'package:flutter/material.dart';
import 'package:project/core/global/theme/DarkTheme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(color: appTheme.blueGray300,);
  static BoxDecoration get fillGray => BoxDecoration(color: appTheme.gray80001,);
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5);
}

