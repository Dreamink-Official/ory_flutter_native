import 'package:get_it/get_it.dart';
import 'package:ory_flutter_native/features/auth/application/signupform/signupform_bloc.dart';
import 'package:ory_flutter_native/features/auth/domain/repositories/auth_repository.dart';
import 'package:ory_flutter_native/features/auth/infrastructure/repositories/auth_repository_impl.dart';

final sl = GetIt.I; // sl == service locator

Future<void> init() async {
  //! State management
  sl.registerFactory(() => SignupformBloc(authRepository: sl()));
  //! Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  //! External
}
