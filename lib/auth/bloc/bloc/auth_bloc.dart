import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitatu/auth/logic/auth_service.dart';
import 'package:habitatu/core/models/failures.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService auth;
  AuthBloc(this.auth) : super(const AuthState.initial());

  Stream<AuthState> _handleAuthResult(Either<Failure, String> result) async* {
    yield* result.fold(
      (f) async* {
        yield AuthState.failure(f);
      },
      (uid) async* {
        yield AuthState.success(uid);
      },
    );
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      registerClicked: (e) async* {
        final result =
            await auth.registerUser(email: e.email, password: e.password);

        yield* _handleAuthResult(result);
      },
      loginClicked: (e) async* {
        final result =
            await auth.singUserIn(email: e.email, password: e.password);

        yield* _handleAuthResult(result);
      },
      googleSignInClicked: (e) async* {
        final result = await auth.signInWithGoogle();

        yield* _handleAuthResult(result);
      },
    );
  }
}
