part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginClicked(String email, String password) =
      _AuthLoginClicked;
  const factory AuthEvent.registerClicked(String email, String password) =
      _AuthRegisterClicked;
  const factory AuthEvent.googleSignInClicked() = _AuthGoogleSignInClicked;
}
