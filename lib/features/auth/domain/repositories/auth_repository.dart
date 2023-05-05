import 'package:dartz/dartz.dart';
import 'package:ory_flutter_native/core/errors/auth_failures.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, String>> InitRegisterFlow();

  Future<Either<AuthFailure, Unit>> InitLoginFlow();

  Future<Either<AuthFailure, Unit>> RegisterWithEmailAndPassword(
      {required String flowId,
      required String email,
      required String password});

  Future<Either<AuthFailure, Unit>> SignInWithEmailAndPassword(
      {required String flowId,
      required String email,
      required String password});
}
