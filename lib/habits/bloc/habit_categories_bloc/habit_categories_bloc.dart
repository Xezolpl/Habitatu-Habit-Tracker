import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:habitatu/habits/data/models/habit_category.dart';
import 'package:habitatu/habits/data/repositories/habit_categories_repository.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

part 'habit_categories_event.dart';
part 'habit_categories_state.dart';
part 'habit_categories_bloc.freezed.dart';

class HabitCategoriesBloc
    extends Bloc<HabitCategoriesEvent, HabitCategoriesState> {
  final IHabitCategoriesRepository _repository;
  List<HabitCategory> _habitCategories = [];

  HabitCategoriesBloc(this._repository)
      : super(const HabitCategoriesState.initial());

  @override
  Stream<HabitCategoriesState> mapEventToState(
    HabitCategoriesEvent event,
  ) async* {
    yield* event.map(
      loadHabitCategoriesCalled: (e) async* {
        yield const HabitCategoriesState.loading();
        _repository.watchAll().listen(
          (r) {
            add(HabitCategoriesEvent.habitCategoriesReceived(r));
          },
        );
      },
      habitCategoriesReceived: (e) async* {
        yield* e.result.fold((f) async* {
          yield* _onFailure(f);
        }, (newCategories) async* {
          _habitCategories = List.from(newCategories);
          yield* _onSuccess(_habitCategories);
        });
      },
      addHabitCategoryClicked: (e) async* {
        final r = await _repository.create(e.habitCategory);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habitCategories));
      },
      habitCategoryChanged: (e) async* {
        final r = await _repository.update(e.habitCategory);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habitCategories));
      },
      removeHabitCategoryClicked: (e) async* {
        final r = await _repository.delete(e.id);
        yield* r.fold(_onFailure, (_) => _onSuccess(_habitCategories));
      },
    );
  }

  Stream<HabitCategoriesState> _onSuccess(
      List<HabitCategory> newHabitCategories) async* {
    yield HabitCategoriesState.success(newHabitCategories);
  }

  Stream<HabitCategoriesState> _onFailure(Failure failure) async* {
    yield HabitCategoriesState.failure(failure);
  }
}
