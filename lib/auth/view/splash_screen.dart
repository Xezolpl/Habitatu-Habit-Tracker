import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitatu/auth/bloc/bloc/auth_bloc.dart';
import 'package:habitatu/auth/view/login_page.dart';
import 'package:habitatu/home/view/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.map(
            initial: (s) => LoginPage(),
            success: (s) => HomePage(),
            failure: (s) => Text(s.failure.toString()),
          );
        },
      ),
    );
  }
}
