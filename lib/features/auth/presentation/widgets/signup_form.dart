import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ory_flutter_native/features/auth/application/signupform/signupform_bloc.dart';
import 'package:ory_flutter_native/features/auth/presentation/widgets/auth_input_form_field.dart';
import 'package:ory_flutter_native/features/auth/presentation/widgets/auth_signin_register_button.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/theme.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  // Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final CustomColorScheme customColorScheme =
        Theme.of(context).extension<CustomColorScheme>()!;
    final CustomTextTheme customTextTheme =
        Theme.of(context).extension<CustomTextTheme>()!;

    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) =>
              BlocConsumer<SignupformBloc, SignupformState>(
            listener: (context, state) {
              state.authFailureOrSucessOption.fold(
                  () => {},
                  (eitherFailureOrSuccess) => eitherFailureOrSuccess.fold(
                      (failure) => print(failure), (_) => print("logged in")));
            },
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showValidationMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                key: formKey,
                child: ListView(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Welcome back!",
                                  style: customTextTheme.headline35),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Start your auth journey",
                                style: customTextTheme.bodyText14
                                    ?.copyWith(color: customColorScheme.color5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              AuthInputFormField(
                                controller: usernameController,
                                hintText: "E-Mail",
                                obscureText: false,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              AuthInputFormField(
                                controller: passwordController,
                                hintText: "Password",
                                obscureText: true,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // AuthSignInRegisterButton(
                              //   title: "Sign in",
                              //   callback: () {
                              //     BlocProvider.of<SignupformBloc>(context).add(
                              //       SignInWithEmailAndPasswordPressed(
                              //           email: usernameController.text,
                              //           password: passwordController.text),
                              //     );
                              //   },
                              // ),
                              const SizedBox(
                                height: 10,
                              ),
                              AuthSignInRegisterButton(
                                title: "Register",
                                callback: () {
                                  BlocProvider.of<SignupformBloc>(context).add(
                                    RegisterWithEmailAndPasswordPressed(
                                        email: usernameController.text,
                                        password: passwordController.text),
                                  );
                                },
                              ),
                              if (state.isSubmitting) ...[
                                const SizedBox(
                                  height: 10,
                                ),
                                LinearProgressIndicator(
                                  color: customColorScheme.colorWhite,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
