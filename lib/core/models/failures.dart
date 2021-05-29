import 'dart:developer';

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final dynamic exception;

  Failure(this.exception) {
    log(' Error\n***********\n${exception?.toString()}\n\nStackTrace\n***********\n${StackTrace.current}.}');
  }
}

///ApiFailure represents error caused by API (endpoints). Those failures are
///mainly server based and they are not ours fault.
class ApiFailure extends Failure {
  ApiFailure({
    dynamic exception,
  }) : super(exception);

  @override
  List<Object?> get props => [];
}

///ConnectionFailure represents error caused by unsuccessful attemtions
///to connect to the internet.
class ConnectionFailure extends Failure {
  ConnectionFailure({
    dynamic exception,
  }) : super(exception);

  @override
  List<Object?> get props => [];
}

///HiveFailure represents error caused by Hive database. The Hive box might been
///empty or didn't exist. There might been problem with migration or database integrity.
class DatabaseFailure extends Failure {
  DatabaseFailure({
    dynamic exception,
  }) : super(exception);

  @override
  List<Object?> get props => [];
}

//If we don't know what happened :/
class UndefinedFailure extends Failure {
  UndefinedFailure({
    dynamic exception,
  }) : super(exception);

  @override
  List<Object?> get props => [];
}

//For authorization
enum AuthFailureType {
  weakPassword,
  wrongPassword,
  emailAlreadyInUse,
  userNotFound,
}

class AuthFailure extends Failure {
  final AuthFailureType type;

  AuthFailure({
    required this.type,
    dynamic exception,
  }) : super(exception);

  @override
  List<Object> get props => [type];
}
