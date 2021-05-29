part of 'add_habit_bloc.dart';

@freezed
class AddHabitEvent with _$AddHabitEvent {
  const factory AddHabitEvent.habitChanged({
    String? iconPath,
    String? name,
    String? description,
    HabitTrack? track,
    List<String>? reasons,
    HabitSchedule? schedule,
    List<String>? categoriesIds,
    HabitStrengthLevel? strengthLevel,
    List<HabitReminder>? reminders,
  }) = _HabitChanged;
  const factory AddHabitEvent.saveHabitClicked() = _SaveHabitClicked;
  const factory AddHabitEvent.clearHabitClicked() = _ClearHabitClicked;
}
