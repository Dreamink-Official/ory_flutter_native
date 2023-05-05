// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signupform_bloc.dart';

class SignupformState {
  final bool isSubmitting;
  final bool showValidationMessages;
  final Option<Either<AuthFailure, Unit>> authFailureOrSucessOption;

  SignupformState(
      {required this.isSubmitting,
      required this.showValidationMessages,
      required this.authFailureOrSucessOption});

  SignupformState copyWith({
    bool? isSubmitting,
    bool? showValidationMessages,
    Option<Either<AuthFailure, Unit>>? authFailureOrSucessOption,
  }) {
    return SignupformState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      authFailureOrSucessOption:
          authFailureOrSucessOption ?? this.authFailureOrSucessOption,
      showValidationMessages:
          showValidationMessages ?? this.showValidationMessages,
    );
  }
}
