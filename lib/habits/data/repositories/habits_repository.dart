import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:habitatu/firestore/firestore_helpers.dart';
import 'package:habitatu/habits/data/models/habit.dart';

abstract class IHabitsRepository {
  Stream<Either<Failure, List<Habit>>> watchAll();
  Future<Either<Failure, Unit>> create(Habit habit);
  Future<Either<Failure, Unit>> update(Habit habit);
  Future<Either<Failure, Unit>> delete(String id);
}

class HabitsRepository implements IHabitsRepository {
  final DbManager dbManager;

  const HabitsRepository(this.dbManager);

  @override
  Stream<Either<Failure, List<Habit>>> watchAll() async* {
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
      yield* userDoc!.habitsCollection.snapshots().map(
            (snapshot) => right<Failure, List<Habit>>(
              snapshot.docs.map<Habit>((doc) =>
                  //TODO ITS NULLABLE BOI
                  Habit.fromMap(doc.data()! as Map<String, dynamic>)).toList(),
            ), //TODO: We have no error handling here
          );
    }
  }

  @override
  Future<Either<Failure, Unit>> create(Habit habit) async {
    try {
      return dbManager.getUserDocument().fold(
        (f) {
          return Left(f);
        },
        (userDoc) async {
          await userDoc.habitsCollection.doc(habit.id).set(habit.toMap());
          return right(unit);
        },
      );
    } catch (e) {
      return left(DatabaseFailure(exception: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(Habit habit) async {
    try {
      return dbManager.getUserDocument().fold(
        (f) {
          return Left(f);
        },
        (userDoc) async {
          await userDoc.habitsCollection.doc(habit.id).update(habit.toMap());
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
          await userDoc.habitsCollection.doc(id).delete();
          return right(unit);
        },
      );
    } catch (e) {
      return left(DatabaseFailure(exception: e));
    }
  }
}
