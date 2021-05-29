part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.watchAllHabitsCalled() = _WatchAllHabitsCalled;
  const factory HabitsEvent.habitsReceived(
      Either<Failure, List<Habit>> result) = _HabitsReceived;
  const factory HabitsEvent.changeHabitDayCalled(Habit habit, HabitDay day) =
      _ChangeHabitDayCalled;
  const factory HabitsEvent.addHabitClicked(Habit habit) = _AddHabitClicked;
  //If using this please be sure you pass habit with the same id as the previous version
  const factory HabitsEvent.habitChanged(Habit habit) = _HabitChanged;
  const factory HabitsEvent.removeHabitClicked(String id) = _RemoveHabitClicked;
}
