import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:habitatu/auth/logic/auth_service.dart';
import 'package:habitatu/firestore/firestore_helpers.dart';
import 'package:habitatu/habits/data/repositories/habit_categories_repository.dart';
import 'package:habitatu/habits/data/repositories/habits_repository.dart';

GetIt getIt = GetIt.instance;

abstract class DI {
  static void initializeDependencies() {
    //Without dependences
    getIt.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    getIt.registerLazySingleton<IAuthService>(() => AuthService());

    //Dependable on upper services
    getIt.registerLazySingleton<DbManager>(() => DbManager(getIt(), getIt()));

    //Dependable on DbManager
    getIt.registerLazySingleton<IHabitsRepository>(
        () => HabitsRepository(getIt()));
    getIt.registerLazySingleton<IHabitCategoriesRepository>(
        () => HabitCategoriesRepository(getIt()));
  }
}
