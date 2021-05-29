import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:habitatu/auth/logic/auth_service.dart';
import 'package:habitatu/auth/bloc/bloc/auth_bloc.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:mocktail/mocktail.dart';

const String validEmail = 'test_email';
const String emailInUse = 'test_email_in_use';
const String validPassword = 'test_password';
const String validUid = 'test_uid';
const String weakPassword = 'weak_password';

class MockAuthService extends Mock implements IAuthService {
  @override
  Future<Either<Failure, String>> singUserIn({
    required String email,
    required String password,
  }) async {
    if (email == validEmail && password == validPassword) {
      return right(validUid);
    } else if (email == validEmail) {
      return left(AuthFailure(type: AuthFailureType.wrongPassword));
    }
    return left(AuthFailure(type: AuthFailureType.userNotFound));
  }

  @override
  Future<Either<Failure, String>> registerUser({
    required String email,
    required String password,
  }) async {
    if (email == emailInUse) {
      return left(AuthFailure(type: AuthFailureType.emailAlreadyInUse));
    }
    if (password == weakPassword) {
      return left(AuthFailure(type: AuthFailureType.weakPassword));
    }
    return right(validUid);
  }

  @override
  Future<Either<Failure, String>> signInWithGoogle() async {
    return right(validUid);
  }
}

void main() {
  group('AuthBloc', () {
    test('initial state is initial', () {
      expect(
          AuthBloc(MockAuthService()).state, equals(const AuthInitialState()));
    });
    group('Logging user in', () {
      blocTest<AuthBloc, AuthState>(
        'emits success when for valid email and password',
        build: () => AuthBloc(MockAuthService()),
        act: (bloc) {
          bloc.add(const AuthEvent.loginClicked(validEmail, validPassword));
        },
        expect: () => [equals(const AuthSuccessState(validUid))],
      );
      blocTest<AuthBloc, AuthState>(
        'emits failure with type of AuthFailure of AuthFailureType.wrongPassowrd when for valid email and wrong password',
        build: () => AuthBloc(MockAuthService()),
        act: (bloc) {
          bloc.add(const AuthEvent.loginClicked(validEmail, 'wrong_password'));
        },
        expect: () => [
          equals(AuthFailureState(
              AuthFailure(type: AuthFailureType.wrongPassword)))
        ],
      );
      blocTest<AuthBloc, AuthState>(
        'emits failure with type of AuthFailure of AuthFailureType.userNotFound when for not valid email',
        build: () => AuthBloc(MockAuthService()),
        act: (bloc) {
          bloc.add(
              const AuthEvent.loginClicked('wrong_email', 'wrong_password'));
        },
        expect: () => [
          equals(
              AuthFailureState(AuthFailure(type: AuthFailureType.userNotFound)))
        ],
      );
    });
  });
}
