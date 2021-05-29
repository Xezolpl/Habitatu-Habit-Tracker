part of 'habit_categories_bloc.dart';

@freezed
class HabitCategoriesEvent with _$HabitCategoriesEvent {
  const factory HabitCategoriesEvent.loadHabitCategoriesCalled() =
      _LoadHabitCategoriesCalled;
  const factory HabitCategoriesEvent.addHabitCategoryClicked(
      HabitCategory habitCategory) = _AddHabitCategoryClicked;
  //If using this please be sure you pass habit with the same id as the previous version
  const factory HabitCategoriesEvent.habitCategoryChanged(
      HabitCategory habitCategory) = _HabitCategoryChanged;
  const factory HabitCategoriesEvent.removeHabitCategoryClicked(String id) =
      _RemoveHabitCategoryClicked;
}
