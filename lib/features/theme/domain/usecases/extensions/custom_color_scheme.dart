import 'package:flutter/material.dart';

@immutable
class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;
  final Color? colorWhite;
  final Color? colorGreen;
  final Color? colorAccent;
  final Color? colorIcon;

  const CustomColorScheme({
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.color5,
    this.colorWhite,
    this.colorGreen,
    this.colorAccent,
    this.colorIcon,
  });

  @override
  CustomColorScheme copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? color5,
    Color? colorWhite,
    Color? colorGreen,
    Color? colorAccent,
    Color? colorIcon,
  }) {
    return CustomColorScheme(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      color5: color5 ?? this.color5,
      colorWhite: colorWhite ?? this.colorWhite,
      colorGreen: colorGreen ?? this.colorGreen,
      colorAccent: colorAccent ?? this.colorAccent,
      colorIcon: colorIcon ?? this.colorIcon,
    );
  }

  @override
  CustomColorScheme lerp(CustomColorScheme? other, double t) {
    if (other is! CustomColorScheme) {
      return this;
    }
    return CustomColorScheme(
      color1: Color.lerp(color1, other.color1, t),
      color2: Color.lerp(color2, other.color2, t),
      color3: Color.lerp(color3, other.color3, t),
      color4: Color.lerp(color4, other.color4, t),
      color5: Color.lerp(color5, other.color5, t),
      colorWhite: Color.lerp(colorWhite, other.colorWhite, t),
      colorGreen: Color.lerp(colorGreen, other.colorGreen, t),
      colorAccent: Color.lerp(colorAccent, other.colorAccent, t),
      colorIcon: Color.lerp(colorIcon, other.colorIcon, t),
    );
  }

  // Optional
  // @override
  // String toString() =>
  //     'CustomColorScheme(brandColor: $brandColor, danger: $danger)';
}
