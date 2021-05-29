import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:habitatu/habits/data/models/habit.dart';
import 'package:habitatu/habits/data/repositories/habits_repository.dart';
import 'package:uuid/uuid.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  final IHabitsRepository _repository;
  List<Habit> _habits = [];

  HabitsBloc(this._repository) : super(const HabitsInitialState());

  @override
  Stream<HabitsState> mapEventToState(
    HabitsEvent event,
  ) async* {
    yield* event.map(
      watchAllHabitsCalled: (e) async* {
        yield const HabitsState.loading();
        _repository.watchAll().listen(
          (r) {
            add(HabitsEvent.habitsReceived(r));
          },
        );
      },
      habitsReceived: (e) async* {
        yield* e.result.fold((f) async* {
          yield* _onFailure(f);
        }, (newHabits) async* {
          _habits = List.from(newHabits);
          yield* _onSuccess(newHabits);
        });
      },
      addHabitClicked: (e) async* {
        final r = await _repository.create(e.habit);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habits));
      },
      habitChanged: (e) async* {
        final r = await _repository.update(e.habit);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habits));
      },
      removeHabitClicked: (e) async* {
        final r = await _repository.delete(e.id);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habits));
      },
      changeHabitDayCalled: (e) async* {
        var newDays = e.habit.track.days
          ..removeWhere((d) => DateUtils.isSameDay(e.day.date, d.date))
          ..add(e.day);
        var newHabit =
            e.habit.copyWith(track: e.habit.track.copyWith(days: newDays));
        final r = await _repository.update(newHabit);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habits));
      },
    );
  }

  Stream<HabitsState> _onSuccess(List<Habit> newHabits) async* {
    yield HabitsState.success(const Uuid().v4(), newHabits);
  }

  Stream<HabitsState> _onFailure(Failure failure) async* {
    yield HabitsState.failure(failure);
  }
}
