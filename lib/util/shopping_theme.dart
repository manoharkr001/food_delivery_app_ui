import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details_screen.dart';
import 'package:grocery_app/util/shopping_colors.dart';

ThemeData buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
    buttonTheme: ButtonThemeData(
      buttonColor: shrineGreen400,
      shape: RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.accent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: shrineGreen300),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        labelLarge: base.labelLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Gilroy',
        displayColor: kTextColor,
        bodyColor: kTextColor,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrineGreen100,
  secondary: shrineGreen50,
  surface: shrineSurfaceWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);
