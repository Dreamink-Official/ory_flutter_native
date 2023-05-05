import 'package:flutter/material.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_text_theme.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_color_scheme.dart';

export 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_text_theme.dart';
export 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_color_scheme.dart';

class AppTheme {
  AppTheme._();

// Colors
  static const Color _dark1Color = Color(0xFF1D1B22);
  static const Color _dark2Color = Color(0xFF26262E);
  static const Color _dark3Color = Color(0xFF34343B);
  static const Color _dark4Color = Color(0xFF43434C);
  static const Color _dark5Color = Color(0xFF868A89);
  static const Color _darkWhiteColor = Colors.white;
  static const Color _darkGreenColor = Color(0xFF8BC24A);
  static const Color _darkGoldenColor = Color(0xFFE3C069);
  static const Color _darkIconColor = Colors.white;

// Font - Body
  static const TextStyle _Body12Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);
  static const TextStyle _Body13Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);
  static const TextStyle _Body14Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);
  static const TextStyle _Body16Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);
  static const TextStyle _Body19Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 19,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);
  static const TextStyle _Body21Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 21,
      fontWeight: FontWeight.w400,
      color: _darkWhiteColor);

// Font - Heading
  static const TextStyle _Heading25Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);
  static const TextStyle _Heading35Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 35,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);
  static const TextStyle _Heading45Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 45,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);
  static const TextStyle _Heading55Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 55,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);
  static const TextStyle _Heading65Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 65,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);
  static const TextStyle _Heading75Text = TextStyle(
      fontFamily: "Inter",
      fontSize: 75,
      fontWeight: FontWeight.w600,
      color: _darkWhiteColor);

// DarkTheme
  static final ThemeData darkTheme = ThemeData(
    extensions: const <ThemeExtension<dynamic>>[
      CustomColorScheme(
        color1: _dark1Color,
        color2: _dark2Color,
        color3: _dark3Color,
        color4: _dark4Color,
        color5: _dark5Color,
        colorWhite: _darkWhiteColor,
        colorGreen: _darkGreenColor,
        colorAccent: _darkGoldenColor,
        colorIcon: _darkIconColor,
      ),
      CustomTextTheme(
        headline25: _Heading25Text,
        headline35: _Heading35Text,
        headline45: _Heading45Text,
        headline55: _Heading55Text,
        headline65: _Heading65Text,
        headline75: _Heading75Text,
        bodyText12: _Body12Text,
        bodyText13: _Body13Text,
        bodyText14: _Body14Text,
        bodyText16: _Body16Text,
        bodyText19: _Body19Text,
        bodyText21: _Body21Text,
      )
    ],
    scaffoldBackgroundColor: _dark1Color,
  );
}
