import 'package:flutter/material.dart';

@immutable
class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle? headline25;
  final TextStyle? headline35;
  final TextStyle? headline45;
  final TextStyle? headline55;
  final TextStyle? headline65;
  final TextStyle? headline75;
  final TextStyle? bodyText12;
  final TextStyle? bodyText13;
  final TextStyle? bodyText14;
  final TextStyle? bodyText16;
  final TextStyle? bodyText19;
  final TextStyle? bodyText21;

  const CustomTextTheme({
    this.headline25,
    this.headline35,
    this.headline45,
    this.headline55,
    this.headline65,
    this.headline75,
    this.bodyText12,
    this.bodyText13,
    this.bodyText14,
    this.bodyText16,
    this.bodyText19,
    this.bodyText21,
  });

  @override
  CustomTextTheme copyWith({
    TextStyle? headline25,
    TextStyle? headline35,
    TextStyle? headline45,
    TextStyle? headline55,
    TextStyle? headline65,
    TextStyle? headline75,
    TextStyle? bodyText12,
    TextStyle? bodyText13,
    TextStyle? bodyText14,
    TextStyle? bodyText16,
    TextStyle? bodyText21,
  }) {
    return CustomTextTheme(
      headline25: headline25 ?? this.headline25,
      headline35: headline35 ?? this.headline35,
      headline45: headline45 ?? this.headline45,
      headline55: headline55 ?? this.headline55,
      headline65: headline65 ?? this.headline65,
      headline75: headline75 ?? this.headline75,
      bodyText12: bodyText12 ?? this.bodyText12,
      bodyText13: bodyText13 ?? this.bodyText13,
      bodyText14: bodyText14 ?? this.bodyText14,
      bodyText16: bodyText16 ?? this.bodyText16,
      bodyText21: bodyText21 ?? this.bodyText21,
    );
  }

  @override
  CustomTextTheme lerp(CustomTextTheme? other, double t) {
    if (other is! CustomTextTheme) {
      return this;
    }
    return CustomTextTheme(
      headline25: TextStyle.lerp(headline25, other.headline25, t),
      headline35: TextStyle.lerp(headline35, other.headline35, t),
      headline45: TextStyle.lerp(headline45, other.headline45, t),
      headline55: TextStyle.lerp(headline55, other.headline55, t),
      headline65: TextStyle.lerp(headline65, other.headline65, t),
      headline75: TextStyle.lerp(headline75, other.headline75, t),
      bodyText12: TextStyle.lerp(bodyText12, other.bodyText12, t),
      bodyText13: TextStyle.lerp(bodyText13, other.bodyText13, t),
      bodyText14: TextStyle.lerp(bodyText14, other.bodyText14, t),
      bodyText16: TextStyle.lerp(bodyText16, other.bodyText16, t),
      bodyText21: TextStyle.lerp(bodyText21, other.bodyText21, t),
    );
  }

  // Optional
  // @override
  // String toString() =>
  //     'CustomTextTheme(brandColor: $brandColor, danger: $danger)';
}
