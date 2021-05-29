import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:habitatu/firestore/firestore_helpers.dart';
import 'package:habitatu/habits/data/models/habit_category.dart';

abstract class IHabitCategoriesRepository {
  Stream<Either<Failure, List<HabitCategory>>> watchAll();
  Future<Either<Failure, Unit>> create(HabitCategory habitCategory);
  Future<Either<Failure, Unit>> update(HabitCategory habitCategory);
  Future<Either<Failure, Unit>> delete(String id);
}

class HabitCategoriesRepository implements IHabitCategoriesRepository {
  final DbManager dbManager;

  HabitCategoriesRepository(this.dbManager);
  @override
  Stream<Either<Failure, List<HabitCategory>>> watchAll() async* {
    DocumentReference<Object?>? userDoc;
    Failure? failure;
    dbManager.getUserDocument().fold((f) {
      failure = f;
    }, (doc) {
      userDoc = doc;
    });

    if (failure != null) {
      yield left(failure!);
    } else {
      yield* userDoc!.habitCategoriesCollection
          //.orderBy('serverTimeStamp', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<Failure, List<HabitCategory>>(
              snapshot.docs
                  .map<HabitCategory>((doc) =>
                      //TODO ITS NULLABLE BOI
                      HabitCategory.fromMap(
                          doc.data()! as Map<String, dynamic>))
                  .toList(),
            ), //TODO: We have no error handling here
          );
    }
  }

  @override
  Future<Either<Failure, Unit>> create(HabitCategory habitCategory) async {
    try {
      return dbManager.getUserDocument().fold(
        (f) {
          return Left(f);
        },
        (userDoc) async {
          await userDoc.habitCategoriesCollection
              .doc(habitCategory.id)
              .set(habitCategory.toMap());
          return right(unit);
        },
      );
    } catch (e) {
      return left(DatabaseFailure(exception: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(HabitCategory habitCategory) async {
    try {
      return dbManager.getUserDocument().fold(
        (f) {
          return Left(f);
        },
        (userDoc) async {
          await userDoc.habitCategoriesCollection
              .doc(habitCategory.id)
              .update(habitCategory.toMap());
          return right(unit);
        },
      );
    } catch (e) {
      return left(DatabaseFailure(exception: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    try {
      return dbManager.getUserDocument().fold(
        (f) {
          return Left(f);
        },
        (userDoc) async {
          await userDoc.habitCategoriesCollection.doc(id).delete();
          return right(unit);
        },
      );
    } catch (e) {
      return left(DatabaseFailure(exception: e));
    }
  }
}
