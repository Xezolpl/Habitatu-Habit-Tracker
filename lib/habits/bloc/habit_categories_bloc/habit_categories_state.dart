part of 'habit_categories_bloc.dart';

@freezed
class HabitCategoriesState with _$HabitCategoriesState {
  const factory HabitCategoriesState.initial() = HabitsCategoriesInitialState;
  const factory HabitCategoriesState.loading() = HabitsCategoriesLoadingState;
  const factory HabitCategoriesState.success(
      List<HabitCategory> habitCategories) = HabitsCategoriesSuccessState;
  const factory HabitCategoriesState.failure(Failure failure) =
      HabitsCategoriesFailureState;
}
