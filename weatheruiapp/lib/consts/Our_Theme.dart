import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weatheruiapp/consts/colors.dart';
import 'package:weatheruiapp/consts/fontstyle.dart';

class CustomTheme {
  static final LightTheme = ThemeData(
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Vx.gray800,
      fontFamily: regular,
      iconTheme: IconThemeData(color: Vx.gray600));

  static final DarkTheme = ThemeData(
      cardColor: bgColor.withOpacity(0.3),
      scaffoldBackgroundColor: bgColor,
      primaryColor: Colors.white,
      fontFamily: regular,
      iconTheme: IconThemeData(color: Colors.white));
}
