import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorsManager.darkBlue,
  scaffoldBackgroundColor:  Colors.white,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),

);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);