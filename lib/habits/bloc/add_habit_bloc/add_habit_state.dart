part of 'add_habit_bloc.dart';

@freezed
class AddHabitState with _$AddHabitState {
  const factory AddHabitState({
    required Habit habit,
    required bool wasSaved,
  }) = _AddHabitState;
  factory AddHabitState.empty() =>
      AddHabitState(habit: Habit.empty(), wasSaved: false);
}
