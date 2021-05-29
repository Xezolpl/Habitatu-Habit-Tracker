// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthLoginClicked loginClicked(String email, String password) {
    return _AuthLoginClicked(
      email,
      password,
    );
  }

  _AuthRegisterClicked registerClicked(String email, String password) {
    return _AuthRegisterClicked(
      email,
      password,
    );
  }

  _AuthGoogleSignInClicked googleSignInClicked() {
    return const _AuthGoogleSignInClicked();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginClicked,
    required TResult Function(String email, String password) registerClicked,
    required TResult Function() googleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginClicked,
    TResult Function(String email, String password)? registerClicked,
    TResult Function()? googleSignInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoginClicked value) loginClicked,
    required TResult Function(_AuthRegisterClicked value) registerClicked,
    required TResult Function(_AuthGoogleSignInClicked value)
        googleSignInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoginClicked value)? loginClicked,
    TResult Function(_AuthRegisterClicked value)? registerClicked,
    TResult Function(_AuthGoogleSignInClicked value)? googleSignInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$AuthLoginClickedCopyWith<$Res> {
  factory _$AuthLoginClickedCopyWith(
          _AuthLoginClicked value, $Res Function(_AuthLoginClicked) then) =
      __$AuthLoginClickedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$AuthLoginClickedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthLoginClickedCopyWith<$Res> {
  __$AuthLoginClickedCopyWithImpl(
      _AuthLoginClicked _value, $Res Function(_AuthLoginClicked) _then)
      : super(_value, (v) => _then(v as _AuthLoginClicked));

  @override
  _AuthLoginClicked get _value => super._value as _AuthLoginClicked;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_AuthLoginClicked(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthLoginClicked implements _AuthLoginClicked {
  const _$_AuthLoginClicked(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginClicked(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthLoginClicked &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$AuthLoginClickedCopyWith<_AuthLoginClicked> get copyWith =>
      __$AuthLoginClickedCopyWithImpl<_AuthLoginClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginClicked,
    required TResult Function(String email, String password) registerClicked,
    required TResult Function() googleSignInClicked,
  }) {
    return loginClicked(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginClicked,
    TResult Function(String email, String password)? registerClicked,
    TResult Function()? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (loginClicked != null) {
      return loginClicked(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoginClicked value) loginClicked,
    required TResult Function(_AuthRegisterClicked value) registerClicked,
    required TResult Function(_AuthGoogleSignInClicked value)
        googleSignInClicked,
  }) {
    return loginClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoginClicked value)? loginClicked,
    TResult Function(_AuthRegisterClicked value)? registerClicked,
    TResult Function(_AuthGoogleSignInClicked value)? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (loginClicked != null) {
      return loginClicked(this);
    }
    return orElse();
  }
}

abstract class _AuthLoginClicked implements AuthEvent {
  const factory _AuthLoginClicked(String email, String password) =
      _$_AuthLoginClicked;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthLoginClickedCopyWith<_AuthLoginClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthRegisterClickedCopyWith<$Res> {
  factory _$AuthRegisterClickedCopyWith(_AuthRegisterClicked value,
          $Res Function(_AuthRegisterClicked) then) =
      __$AuthRegisterClickedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$AuthRegisterClickedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthRegisterClickedCopyWith<$Res> {
  __$AuthRegisterClickedCopyWithImpl(
      _AuthRegisterClicked _value, $Res Function(_AuthRegisterClicked) _then)
      : super(_value, (v) => _then(v as _AuthRegisterClicked));

  @override
  _AuthRegisterClicked get _value => super._value as _AuthRegisterClicked;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_AuthRegisterClicked(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthRegisterClicked implements _AuthRegisterClicked {
  const _$_AuthRegisterClicked(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerClicked(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthRegisterClicked &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$AuthRegisterClickedCopyWith<_AuthRegisterClicked> get copyWith =>
      __$AuthRegisterClickedCopyWithImpl<_AuthRegisterClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginClicked,
    required TResult Function(String email, String password) registerClicked,
    required TResult Function() googleSignInClicked,
  }) {
    return registerClicked(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginClicked,
    TResult Function(String email, String password)? registerClicked,
    TResult Function()? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (registerClicked != null) {
      return registerClicked(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoginClicked value) loginClicked,
    required TResult Function(_AuthRegisterClicked value) registerClicked,
    required TResult Function(_AuthGoogleSignInClicked value)
        googleSignInClicked,
  }) {
    return registerClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoginClicked value)? loginClicked,
    TResult Function(_AuthRegisterClicked value)? registerClicked,
    TResult Function(_AuthGoogleSignInClicked value)? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (registerClicked != null) {
      return registerClicked(this);
    }
    return orElse();
  }
}

abstract class _AuthRegisterClicked implements AuthEvent {
  const factory _AuthRegisterClicked(String email, String password) =
      _$_AuthRegisterClicked;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthRegisterClickedCopyWith<_AuthRegisterClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthGoogleSignInClickedCopyWith<$Res> {
  factory _$AuthGoogleSignInClickedCopyWith(_AuthGoogleSignInClicked value,
          $Res Function(_AuthGoogleSignInClicked) then) =
      __$AuthGoogleSignInClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthGoogleSignInClickedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthGoogleSignInClickedCopyWith<$Res> {
  __$AuthGoogleSignInClickedCopyWithImpl(_AuthGoogleSignInClicked _value,
      $Res Function(_AuthGoogleSignInClicked) _then)
      : super(_value, (v) => _then(v as _AuthGoogleSignInClicked));

  @override
  _AuthGoogleSignInClicked get _value =>
      super._value as _AuthGoogleSignInClicked;
}

/// @nodoc

class _$_AuthGoogleSignInClicked implements _AuthGoogleSignInClicked {
  const _$_AuthGoogleSignInClicked();

  @override
  String toString() {
    return 'AuthEvent.googleSignInClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthGoogleSignInClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginClicked,
    required TResult Function(String email, String password) registerClicked,
    required TResult Function() googleSignInClicked,
  }) {
    return googleSignInClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginClicked,
    TResult Function(String email, String password)? registerClicked,
    TResult Function()? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (googleSignInClicked != null) {
      return googleSignInClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoginClicked value) loginClicked,
    required TResult Function(_AuthRegisterClicked value) registerClicked,
    required TResult Function(_AuthGoogleSignInClicked value)
        googleSignInClicked,
  }) {
    return googleSignInClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoginClicked value)? loginClicked,
    TResult Function(_AuthRegisterClicked value)? registerClicked,
    TResult Function(_AuthGoogleSignInClicked value)? googleSignInClicked,
    required TResult orElse(),
  }) {
    if (googleSignInClicked != null) {
      return googleSignInClicked(this);
    }
    return orElse();
  }
}

abstract class _AuthGoogleSignInClicked implements AuthEvent {
  const factory _AuthGoogleSignInClicked() = _$_AuthGoogleSignInClicked;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthInitialState initial() {
    return const AuthInitialState();
  }

  AuthSuccessState success(String uid) {
    return AuthSuccessState(
      uid,
    );
  }

  AuthFailureState failure(Failure failure) {
    return AuthFailureState(
      failure,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String uid) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String uid)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(AuthFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthInitialStateCopyWith<$Res> {
  factory $AuthInitialStateCopyWith(
          AuthInitialState value, $Res Function(AuthInitialState) then) =
      _$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitialStateCopyWith<$Res> {
  _$AuthInitialStateCopyWithImpl(
      AuthInitialState _value, $Res Function(AuthInitialState) _then)
      : super(_value, (v) => _then(v as AuthInitialState));

  @override
  AuthInitialState get _value => super._value as AuthInitialState;
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String uid) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String uid)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthState {
  const factory AuthInitialState() = _$AuthInitialState;
}

/// @nodoc
abstract class $AuthSuccessStateCopyWith<$Res> {
  factory $AuthSuccessStateCopyWith(
          AuthSuccessState value, $Res Function(AuthSuccessState) then) =
      _$AuthSuccessStateCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$AuthSuccessStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSuccessStateCopyWith<$Res> {
  _$AuthSuccessStateCopyWithImpl(
      AuthSuccessState _value, $Res Function(AuthSuccessState) _then)
      : super(_value, (v) => _then(v as AuthSuccessState));

  @override
  AuthSuccessState get _value => super._value as AuthSuccessState;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(AuthSuccessState(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSuccessState implements AuthSuccessState {
  const _$AuthSuccessState(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'AuthState.success(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthSuccessState &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  $AuthSuccessStateCopyWith<AuthSuccessState> get copyWith =>
      _$AuthSuccessStateCopyWithImpl<AuthSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String uid) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String uid)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthSuccessState implements AuthState {
  const factory AuthSuccessState(String uid) = _$AuthSuccessState;

  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSuccessStateCopyWith<AuthSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureStateCopyWith<$Res> {
  factory $AuthFailureStateCopyWith(
          AuthFailureState value, $Res Function(AuthFailureState) then) =
      _$AuthFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$AuthFailureStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthFailureStateCopyWith<$Res> {
  _$AuthFailureStateCopyWithImpl(
      AuthFailureState _value, $Res Function(AuthFailureState) _then)
      : super(_value, (v) => _then(v as AuthFailureState));

  @override
  AuthFailureState get _value => super._value as AuthFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(AuthFailureState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthFailureState implements AuthFailureState {
  const _$AuthFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailureState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $AuthFailureStateCopyWith<AuthFailureState> get copyWith =>
      _$AuthFailureStateCopyWithImpl<AuthFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String uid) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String uid)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailureState implements AuthState {
  const factory AuthFailureState(Failure failure) = _$AuthFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthFailureStateCopyWith<AuthFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
