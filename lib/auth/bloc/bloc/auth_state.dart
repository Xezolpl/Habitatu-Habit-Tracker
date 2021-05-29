part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;
  const factory AuthState.success(String uid) = AuthSuccessState;
  const factory AuthState.failure(Failure failure) = AuthFailureState;
  // const factory AuthState.expired(Failure failure) = AuthExpired;
}
