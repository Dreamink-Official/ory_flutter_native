import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ory_flutter_native/core/utils/injections.dart';
import 'package:ory_flutter_native/features/auth/application/signupform/signupform_bloc.dart';
import 'package:ory_flutter_native/features/auth/presentation/widgets/signup_form.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/extensions/custom_color_scheme.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomColorScheme customColorScheme =
        Theme.of(context).extension<CustomColorScheme>()!;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: customColorScheme.color2,
                child: BlocProvider(
                  create: (context) => sl<SignupformBloc>(),
                  child: SignUpForm(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
