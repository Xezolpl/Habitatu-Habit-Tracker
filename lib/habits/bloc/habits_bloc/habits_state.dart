part of 'habits_bloc.dart';

@freezed
class HabitsState with _$HabitsState {
  const factory HabitsState.initial() = HabitsInitialState;
  const factory HabitsState.loading() = HabitsLoadingState;
  const factory HabitsState.success(String id, List<Habit> habits) =
      HabitsSuccessState;
  const factory HabitsState.failure(Failure failure) = HabitsFailureState;
}
