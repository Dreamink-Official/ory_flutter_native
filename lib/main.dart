import 'package:flutter/material.dart';
import 'package:ory_flutter_native/core/utils/injections.dart'
    as di; // di == dependency injection
import 'package:ory_flutter_native/features/auth/presentation/views/signup_view.dart';
import 'package:ory_flutter_native/features/theme/domain/usecases/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Paperdot',
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        home: SignUpView());
  }
}
