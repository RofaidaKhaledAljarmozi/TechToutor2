import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project/core/global/theme/DarkTheme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {

  static ButtonStyle get fillGray =>  ButtonStyle(
    backgroundColor:  MaterialStateProperty.all<Color>(Colors.white60),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
    ),
    minimumSize: MaterialStateProperty.all( Size(120, 40)),
  );

  static ButtonStyle get fillBlue =>  ButtonStyle(
    backgroundColor:  MaterialStateProperty.all<Color>(theme.primaryColor),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
    ),
    minimumSize: MaterialStateProperty.all( Size(120, 40)),
  );
}
