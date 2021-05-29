import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitatu/habits/bloc/habits_bloc/habits_bloc.dart';
import 'package:habitatu/habits/data/models/habit.dart';
import 'package:uuid/uuid.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
part 'add_habit_event.dart';
part 'add_habit_state.dart';
part 'add_habit_bloc.freezed.dart';

class AddHabitBloc extends Bloc<AddHabitEvent, AddHabitState> {
  AddHabitBloc() : super(AddHabitState.empty());

  @override
  Stream<AddHabitState> mapEventToState(
    AddHabitEvent event,
  ) async* {
    yield* event.map(
      habitChanged: (e) async* {
        final h = state.habit;
        yield state.copyWith(
            habit: h.copyWith(
          iconPath: e.iconPath ?? h.iconPath,
          name: e.name ?? h.name,
          description: e.description ?? h.description,
          track: e.track ?? h.track,
          reasons: e.reasons ?? h.reasons,
          schedule: e.schedule ?? h.schedule,
          categoriesIds: e.categoriesIds ?? h.categoriesIds,
          strengthLevel: e.strengthLevel ?? h.strengthLevel,
          reminders: e.reminders ?? h.reminders,
        ));
      },
      saveHabitClicked: (e) async* {
        yield state.copyWith(wasSaved: true);
      },
      clearHabitClicked: (e) async* {
        yield state.copyWith(wasSaved: false, habit: Habit.empty());
      },
    );
  }
}
