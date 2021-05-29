import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habitatu/core/models/failures.dart';

abstract class IAuthService {
  //Returns user id
  Future<Either<Failure, String>> registerUser({
    required String email,
    required String password,
  });
  //Returns user id
  Future<Either<Failure, String>> singUserIn({
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> signInWithGoogle();
  Future singUserOut();
  User? getSingedInUser();
  Stream<User?> listenForUser();
}

class AuthService implements IAuthService {
  final _auth = FirebaseAuth.instance;

  void listenForAuthStateChanges() {
    _auth.authStateChanges().listen(
      (user) {
        if (user == null) {
          log('User is logged out');
        } else {
          log('User logged in');
        }
      },
    );
  }

  //Returns user id
  @override
  Future<Either<Failure, String>> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      //Try to register user
      var userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //If actual user instance is not null then return right
      final user = userCredential.user;
      if (user != null) {
        await user.sendEmailVerification();
        return Right(user.uid);
      }

      //Else we don't know what actually happened so undefined
      return Left(UndefinedFailure(
        exception: 'userCredinal.user was null after a successful registration',
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(
            AuthFailure(type: AuthFailureType.weakPassword, exception: e));
      } else if (e.code == 'email-already-in-use') {
        return Left(
            AuthFailure(type: AuthFailureType.emailAlreadyInUse, exception: e));
      }
    }
    return Left(UndefinedFailure());
  }

  @override
  Future<Either<Failure, String>> signInWithGoogle() async {
    var message = '';
    try {
      // Trigger the authentication flow
      final googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      if (googleAuth != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Now get user credential
        final userCredential = await _auth.signInWithCredential(credential);

        //If actual user instance is not null then return right
        final user = userCredential.user;
        if (user != null) {
          return Right(user.uid);
        }

        //Else we don't know what actually happened so undefined
        message = 'userCredinal.user was null after a successful registration';
      }
    } catch (e) {
      log(e.toString());
    }
    return Left(UndefinedFailure(exception: message));
  }

  //Returns user id
  @override
  Future<Either<Failure, String>> singUserIn({
    required String email,
    required String password,
  }) async {
    try {
      //Try to sign user in
      var userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      //If actual user instance is not null then return right
      final user = userCredential.user;
      if (user != null) {
        return Right(user.uid);
      }
      //Else we don't know what actually happened so undefined
      return Left(UndefinedFailure(
        exception: 'userCredinal.user was null after a successful registration',
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(
            AuthFailure(type: AuthFailureType.userNotFound, exception: e));
      } else if (e.code == 'wrong-password') {
        return Left(
            AuthFailure(type: AuthFailureType.wrongPassword, exception: e));
      }
    }
    return Left(UndefinedFailure());
  }

  @override
  Future singUserOut() async {
    await _auth.signOut();
  }

  @override
  User? getSingedInUser() {
    return _auth.currentUser;
  }

  @override
  Stream<User?> listenForUser() {
    return _auth.authStateChanges();
  }
}
