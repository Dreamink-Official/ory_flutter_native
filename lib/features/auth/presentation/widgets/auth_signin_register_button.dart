import 'package:flutter/material.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_color_scheme.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_text_theme.dart';

class AuthSignInRegisterButton extends StatelessWidget {
  final String title;
  final Function callback;
  const AuthSignInRegisterButton({
    super.key,
    required this.title,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    final CustomColorScheme customColorScheme =
        Theme.of(context).extension<CustomColorScheme>()!;
    final CustomTextTheme customTextTheme =
        Theme.of(context).extension<CustomTextTheme>()!;

    return InkResponse(
      onTap: () => callback(),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: customColorScheme.colorAccent,
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: customTextTheme.bodyText16?.copyWith(
                color: customColorScheme.color2, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
