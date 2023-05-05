import 'package:dio/dio.dart';
import 'package:ory_client/ory_client.dart';
import 'package:ory_flutter_native/core/errors/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ory_flutter_native/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final dio = Dio();
  final api = OryClient(basePathOverride: 'ORY CLIENT PATH').getFrontendApi();

  @override
  Future<Either<AuthFailure, String>> InitRegisterFlow() async {
    try {
      final response = await api.createNativeRegistrationFlow();
      //! Deserializing error
      print(response.data);

      final String flowId = 'response.data[id]';
      return right(flowId);
    } on DioError catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> InitLoginFlow() {
    // TODO: implement InitLoginFlow
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> RegisterWithEmailAndPassword(
      {required String flowId,
      required String email,
      required String password}) async {
    try {
      //! How does 'updateRegistrationFlowBody' need to look like?
      Map<String, dynamic> data = {
        'method': 'password',
        'password': password,
        'traits': {
          'email': email,
        },
      };

      // await api.updateRegistrationFlow(
      //     flow: flowId, updateRegistrationFlowBody: data);

      return right(unit);
    } on DioError catch (e) {
      print(e);
      return left(EmailAlreadyInUseFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> SignInWithEmailAndPassword(
      {required String flowId,
      required String email,
      required String password}) {
    // TODO: implement SignInWithEmailAndPassword
    throw UnimplementedError();
  }
}
