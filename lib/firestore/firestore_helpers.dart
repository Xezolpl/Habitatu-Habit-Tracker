import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:habitatu/auth/logic/auth_service.dart';
import 'package:habitatu/core/models/failures.dart';

class DbManager {
  final FirebaseFirestore firestore;
  final IAuthService authService;

  const DbManager(this.firestore, this.authService);

  Either<Failure, DocumentReference> getUserDocument() {
    final user = authService.getSingedInUser();
    if (user == null) {
      return Left(AuthFailure(type: AuthFailureType.userNotFound));
    }
    return Right(firestore.usersCollection.doc(user.uid));
  }
}

extension XFirebaseFirestore on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> get usersCollection =>
      collection('users');
}

extension XDocumentReference on DocumentReference {
  CollectionReference get habitsCollection => collection('habits');
  CollectionReference get habitCategoriesCollection =>
      collection('habit_categories');
}
