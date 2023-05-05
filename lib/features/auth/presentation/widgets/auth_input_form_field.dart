import 'package:flutter/material.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_color_scheme.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_text_theme.dart';

class AuthInputFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;

  const AuthInputFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    final CustomColorScheme customColorScheme =
        Theme.of(context).extension<CustomColorScheme>()!;
    final CustomTextTheme customTextTheme =
        Theme.of(context).extension<CustomTextTheme>()!;

    return TextFormField(
      controller: controller,
      style: customTextTheme.bodyText14,
      cursorColor: customColorScheme.colorWhite,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: customColorScheme.color4!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: customColorScheme.colorAccent!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: Colors.red),
        ),
        hintText: hintText,
        hintStyle: customTextTheme.bodyText16,
      ),
    );
  }
}
