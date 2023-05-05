import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:ory_flutter_native/core/errors/auth_failures.dart';
import 'package:ory_flutter_native/features/auth/domain/repositories/auth_repository.dart';

part 'signupform_event.dart';
part 'signupform_state.dart';

class SignupformBloc extends Bloc<SignupformEvent, SignupformState> {
  final AuthRepository authRepository;
  SignupformBloc({required this.authRepository})
      : super(SignupformState(
            isSubmitting: false,
            showValidationMessages: false,
            authFailureOrSucessOption: none())) {
    //
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final initResult = await authRepository.InitRegisterFlow();
        final failureOrSuccess = initResult.fold(
            (failure) => {},
            (flowId) async => await authRepository.RegisterWithEmailAndPassword(
                flowId: flowId,
                email: event.email!,
                password: event.password!));
      }
    });

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(isSubmitting: false, showValidationMessages: true));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
      }
    });
  }
}
