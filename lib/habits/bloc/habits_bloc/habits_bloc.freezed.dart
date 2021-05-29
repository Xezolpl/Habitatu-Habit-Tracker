// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitsEventTearOff {
  const _$HabitsEventTearOff();

  _WatchAllHabitsCalled watchAllHabitsCalled() {
    return const _WatchAllHabitsCalled();
  }

  _HabitsReceived habitsReceived(Either<Failure, List<Habit>> result) {
    return _HabitsReceived(
      result,
    );
  }

  _ChangeHabitDayCalled changeHabitDayCalled(Habit habit, HabitDay day) {
    return _ChangeHabitDayCalled(
      habit,
      day,
    );
  }

  _AddHabitClicked addHabitClicked(Habit habit) {
    return _AddHabitClicked(
      habit,
    );
  }

  _HabitChanged habitChanged(Habit habit) {
    return _HabitChanged(
      habit,
    );
  }

  _RemoveHabitClicked removeHabitClicked(String id) {
    return _RemoveHabitClicked(
      id,
    );
  }
}

/// @nodoc
const $HabitsEvent = _$HabitsEventTearOff();

/// @nodoc
mixin _$HabitsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsEventCopyWith<$Res> {
  factory $HabitsEventCopyWith(
          HabitsEvent value, $Res Function(HabitsEvent) then) =
      _$HabitsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitsEventCopyWithImpl<$Res> implements $HabitsEventCopyWith<$Res> {
  _$HabitsEventCopyWithImpl(this._value, this._then);

  final HabitsEvent _value;
  // ignore: unused_field
  final $Res Function(HabitsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllHabitsCalledCopyWith<$Res> {
  factory _$WatchAllHabitsCalledCopyWith(_WatchAllHabitsCalled value,
          $Res Function(_WatchAllHabitsCalled) then) =
      __$WatchAllHabitsCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllHabitsCalledCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res>
    implements _$WatchAllHabitsCalledCopyWith<$Res> {
  __$WatchAllHabitsCalledCopyWithImpl(
      _WatchAllHabitsCalled _value, $Res Function(_WatchAllHabitsCalled) _then)
      : super(_value, (v) => _then(v as _WatchAllHabitsCalled));

  @override
  _WatchAllHabitsCalled get _value => super._value as _WatchAllHabitsCalled;
}

/// @nodoc

class _$_WatchAllHabitsCalled implements _WatchAllHabitsCalled {
  const _$_WatchAllHabitsCalled();

  @override
  String toString() {
    return 'HabitsEvent.watchAllHabitsCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllHabitsCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return watchAllHabitsCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (watchAllHabitsCalled != null) {
      return watchAllHabitsCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return watchAllHabitsCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (watchAllHabitsCalled != null) {
      return watchAllHabitsCalled(this);
    }
    return orElse();
  }
}

abstract class _WatchAllHabitsCalled implements HabitsEvent {
  const factory _WatchAllHabitsCalled() = _$_WatchAllHabitsCalled;
}

/// @nodoc
abstract class _$HabitsReceivedCopyWith<$Res> {
  factory _$HabitsReceivedCopyWith(
          _HabitsReceived value, $Res Function(_HabitsReceived) then) =
      __$HabitsReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<Habit>> result});
}

/// @nodoc
class __$HabitsReceivedCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res>
    implements _$HabitsReceivedCopyWith<$Res> {
  __$HabitsReceivedCopyWithImpl(
      _HabitsReceived _value, $Res Function(_HabitsReceived) _then)
      : super(_value, (v) => _then(v as _HabitsReceived));

  @override
  _HabitsReceived get _value => super._value as _HabitsReceived;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_HabitsReceived(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Habit>>,
    ));
  }
}

/// @nodoc

class _$_HabitsReceived implements _HabitsReceived {
  const _$_HabitsReceived(this.result);

  @override
  final Either<Failure, List<Habit>> result;

  @override
  String toString() {
    return 'HabitsEvent.habitsReceived(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitsReceived &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$HabitsReceivedCopyWith<_HabitsReceived> get copyWith =>
      __$HabitsReceivedCopyWithImpl<_HabitsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return habitsReceived(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (habitsReceived != null) {
      return habitsReceived(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return habitsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (habitsReceived != null) {
      return habitsReceived(this);
    }
    return orElse();
  }
}

abstract class _HabitsReceived implements HabitsEvent {
  const factory _HabitsReceived(Either<Failure, List<Habit>> result) =
      _$_HabitsReceived;

  Either<Failure, List<Habit>> get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HabitsReceivedCopyWith<_HabitsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeHabitDayCalledCopyWith<$Res> {
  factory _$ChangeHabitDayCalledCopyWith(_ChangeHabitDayCalled value,
          $Res Function(_ChangeHabitDayCalled) then) =
      __$ChangeHabitDayCalledCopyWithImpl<$Res>;
  $Res call({Habit habit, HabitDay day});
}

/// @nodoc
class __$ChangeHabitDayCalledCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res>
    implements _$ChangeHabitDayCalledCopyWith<$Res> {
  __$ChangeHabitDayCalledCopyWithImpl(
      _ChangeHabitDayCalled _value, $Res Function(_ChangeHabitDayCalled) _then)
      : super(_value, (v) => _then(v as _ChangeHabitDayCalled));

  @override
  _ChangeHabitDayCalled get _value => super._value as _ChangeHabitDayCalled;

  @override
  $Res call({
    Object? habit = freezed,
    Object? day = freezed,
  }) {
    return _then(_ChangeHabitDayCalled(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as HabitDay,
    ));
  }
}

/// @nodoc

class _$_ChangeHabitDayCalled implements _ChangeHabitDayCalled {
  const _$_ChangeHabitDayCalled(this.habit, this.day);

  @override
  final Habit habit;
  @override
  final HabitDay day;

  @override
  String toString() {
    return 'HabitsEvent.changeHabitDayCalled(habit: $habit, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeHabitDayCalled &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habit) ^
      const DeepCollectionEquality().hash(day);

  @JsonKey(ignore: true)
  @override
  _$ChangeHabitDayCalledCopyWith<_ChangeHabitDayCalled> get copyWith =>
      __$ChangeHabitDayCalledCopyWithImpl<_ChangeHabitDayCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return changeHabitDayCalled(habit, day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (changeHabitDayCalled != null) {
      return changeHabitDayCalled(habit, day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return changeHabitDayCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (changeHabitDayCalled != null) {
      return changeHabitDayCalled(this);
    }
    return orElse();
  }
}

abstract class _ChangeHabitDayCalled implements HabitsEvent {
  const factory _ChangeHabitDayCalled(Habit habit, HabitDay day) =
      _$_ChangeHabitDayCalled;

  Habit get habit => throw _privateConstructorUsedError;
  HabitDay get day => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeHabitDayCalledCopyWith<_ChangeHabitDayCalled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddHabitClickedCopyWith<$Res> {
  factory _$AddHabitClickedCopyWith(
          _AddHabitClicked value, $Res Function(_AddHabitClicked) then) =
      __$AddHabitClickedCopyWithImpl<$Res>;
  $Res call({Habit habit});
}

/// @nodoc
class __$AddHabitClickedCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res>
    implements _$AddHabitClickedCopyWith<$Res> {
  __$AddHabitClickedCopyWithImpl(
      _AddHabitClicked _value, $Res Function(_AddHabitClicked) _then)
      : super(_value, (v) => _then(v as _AddHabitClicked));

  @override
  _AddHabitClicked get _value => super._value as _AddHabitClicked;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_AddHabitClicked(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$_AddHabitClicked implements _AddHabitClicked {
  const _$_AddHabitClicked(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitsEvent.addHabitClicked(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddHabitClicked &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @JsonKey(ignore: true)
  @override
  _$AddHabitClickedCopyWith<_AddHabitClicked> get copyWith =>
      __$AddHabitClickedCopyWithImpl<_AddHabitClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return addHabitClicked(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (addHabitClicked != null) {
      return addHabitClicked(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return addHabitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (addHabitClicked != null) {
      return addHabitClicked(this);
    }
    return orElse();
  }
}

abstract class _AddHabitClicked implements HabitsEvent {
  const factory _AddHabitClicked(Habit habit) = _$_AddHabitClicked;

  Habit get habit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddHabitClickedCopyWith<_AddHabitClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HabitChangedCopyWith<$Res> {
  factory _$HabitChangedCopyWith(
          _HabitChanged value, $Res Function(_HabitChanged) then) =
      __$HabitChangedCopyWithImpl<$Res>;
  $Res call({Habit habit});
}

/// @nodoc
class __$HabitChangedCopyWithImpl<$Res> extends _$HabitsEventCopyWithImpl<$Res>
    implements _$HabitChangedCopyWith<$Res> {
  __$HabitChangedCopyWithImpl(
      _HabitChanged _value, $Res Function(_HabitChanged) _then)
      : super(_value, (v) => _then(v as _HabitChanged));

  @override
  _HabitChanged get _value => super._value as _HabitChanged;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_HabitChanged(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$_HabitChanged implements _HabitChanged {
  const _$_HabitChanged(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitsEvent.habitChanged(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitChanged &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @JsonKey(ignore: true)
  @override
  _$HabitChangedCopyWith<_HabitChanged> get copyWith =>
      __$HabitChangedCopyWithImpl<_HabitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return habitChanged(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (habitChanged != null) {
      return habitChanged(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return habitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (habitChanged != null) {
      return habitChanged(this);
    }
    return orElse();
  }
}

abstract class _HabitChanged implements HabitsEvent {
  const factory _HabitChanged(Habit habit) = _$_HabitChanged;

  Habit get habit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HabitChangedCopyWith<_HabitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveHabitClickedCopyWith<$Res> {
  factory _$RemoveHabitClickedCopyWith(
          _RemoveHabitClicked value, $Res Function(_RemoveHabitClicked) then) =
      __$RemoveHabitClickedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$RemoveHabitClickedCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res>
    implements _$RemoveHabitClickedCopyWith<$Res> {
  __$RemoveHabitClickedCopyWithImpl(
      _RemoveHabitClicked _value, $Res Function(_RemoveHabitClicked) _then)
      : super(_value, (v) => _then(v as _RemoveHabitClicked));

  @override
  _RemoveHabitClicked get _value => super._value as _RemoveHabitClicked;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RemoveHabitClicked(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveHabitClicked implements _RemoveHabitClicked {
  const _$_RemoveHabitClicked(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HabitsEvent.removeHabitClicked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveHabitClicked &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RemoveHabitClickedCopyWith<_RemoveHabitClicked> get copyWith =>
      __$RemoveHabitClickedCopyWithImpl<_RemoveHabitClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllHabitsCalled,
    required TResult Function(Either<Failure, List<Habit>> result)
        habitsReceived,
    required TResult Function(Habit habit, HabitDay day) changeHabitDayCalled,
    required TResult Function(Habit habit) addHabitClicked,
    required TResult Function(Habit habit) habitChanged,
    required TResult Function(String id) removeHabitClicked,
  }) {
    return removeHabitClicked(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllHabitsCalled,
    TResult Function(Either<Failure, List<Habit>> result)? habitsReceived,
    TResult Function(Habit habit, HabitDay day)? changeHabitDayCalled,
    TResult Function(Habit habit)? addHabitClicked,
    TResult Function(Habit habit)? habitChanged,
    TResult Function(String id)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (removeHabitClicked != null) {
      return removeHabitClicked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllHabitsCalled value) watchAllHabitsCalled,
    required TResult Function(_HabitsReceived value) habitsReceived,
    required TResult Function(_ChangeHabitDayCalled value) changeHabitDayCalled,
    required TResult Function(_AddHabitClicked value) addHabitClicked,
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_RemoveHabitClicked value) removeHabitClicked,
  }) {
    return removeHabitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllHabitsCalled value)? watchAllHabitsCalled,
    TResult Function(_HabitsReceived value)? habitsReceived,
    TResult Function(_ChangeHabitDayCalled value)? changeHabitDayCalled,
    TResult Function(_AddHabitClicked value)? addHabitClicked,
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_RemoveHabitClicked value)? removeHabitClicked,
    required TResult orElse(),
  }) {
    if (removeHabitClicked != null) {
      return removeHabitClicked(this);
    }
    return orElse();
  }
}

abstract class _RemoveHabitClicked implements HabitsEvent {
  const factory _RemoveHabitClicked(String id) = _$_RemoveHabitClicked;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveHabitClickedCopyWith<_RemoveHabitClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HabitsStateTearOff {
  const _$HabitsStateTearOff();

  HabitsInitialState initial() {
    return const HabitsInitialState();
  }

  HabitsLoadingState loading() {
    return const HabitsLoadingState();
  }

  HabitsSuccessState success(String id, List<Habit> habits) {
    return HabitsSuccessState(
      id,
      habits,
    );
  }

  HabitsFailureState failure(Failure failure) {
    return HabitsFailureState(
      failure,
    );
  }
}

/// @nodoc
const $HabitsState = _$HabitsStateTearOff();

/// @nodoc
mixin _$HabitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id, List<Habit> habits) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id, List<Habit> habits)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitsInitialState value) initial,
    required TResult Function(HabitsLoadingState value) loading,
    required TResult Function(HabitsSuccessState value) success,
    required TResult Function(HabitsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitsInitialState value)? initial,
    TResult Function(HabitsLoadingState value)? loading,
    TResult Function(HabitsSuccessState value)? success,
    TResult Function(HabitsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsStateCopyWith<$Res> {
  factory $HabitsStateCopyWith(
          HabitsState value, $Res Function(HabitsState) then) =
      _$HabitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitsStateCopyWithImpl<$Res> implements $HabitsStateCopyWith<$Res> {
  _$HabitsStateCopyWithImpl(this._value, this._then);

  final HabitsState _value;
  // ignore: unused_field
  final $Res Function(HabitsState) _then;
}

/// @nodoc
abstract class $HabitsInitialStateCopyWith<$Res> {
  factory $HabitsInitialStateCopyWith(
          HabitsInitialState value, $Res Function(HabitsInitialState) then) =
      _$HabitsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitsInitialStateCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res>
    implements $HabitsInitialStateCopyWith<$Res> {
  _$HabitsInitialStateCopyWithImpl(
      HabitsInitialState _value, $Res Function(HabitsInitialState) _then)
      : super(_value, (v) => _then(v as HabitsInitialState));

  @override
  HabitsInitialState get _value => super._value as HabitsInitialState;
}

/// @nodoc

class _$HabitsInitialState implements HabitsInitialState {
  const _$HabitsInitialState();

  @override
  String toString() {
    return 'HabitsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HabitsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id, List<Habit> habits) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id, List<Habit> habits)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitsInitialState value) initial,
    required TResult Function(HabitsLoadingState value) loading,
    required TResult Function(HabitsSuccessState value) success,
    required TResult Function(HabitsFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitsInitialState value)? initial,
    TResult Function(HabitsLoadingState value)? loading,
    TResult Function(HabitsSuccessState value)? success,
    TResult Function(HabitsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HabitsInitialState implements HabitsState {
  const factory HabitsInitialState() = _$HabitsInitialState;
}

/// @nodoc
abstract class $HabitsLoadingStateCopyWith<$Res> {
  factory $HabitsLoadingStateCopyWith(
          HabitsLoadingState value, $Res Function(HabitsLoadingState) then) =
      _$HabitsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitsLoadingStateCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res>
    implements $HabitsLoadingStateCopyWith<$Res> {
  _$HabitsLoadingStateCopyWithImpl(
      HabitsLoadingState _value, $Res Function(HabitsLoadingState) _then)
      : super(_value, (v) => _then(v as HabitsLoadingState));

  @override
  HabitsLoadingState get _value => super._value as HabitsLoadingState;
}

/// @nodoc

class _$HabitsLoadingState implements HabitsLoadingState {
  const _$HabitsLoadingState();

  @override
  String toString() {
    return 'HabitsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HabitsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id, List<Habit> habits) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id, List<Habit> habits)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitsInitialState value) initial,
    required TResult Function(HabitsLoadingState value) loading,
    required TResult Function(HabitsSuccessState value) success,
    required TResult Function(HabitsFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitsInitialState value)? initial,
    TResult Function(HabitsLoadingState value)? loading,
    TResult Function(HabitsSuccessState value)? success,
    TResult Function(HabitsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitsLoadingState implements HabitsState {
  const factory HabitsLoadingState() = _$HabitsLoadingState;
}

/// @nodoc
abstract class $HabitsSuccessStateCopyWith<$Res> {
  factory $HabitsSuccessStateCopyWith(
          HabitsSuccessState value, $Res Function(HabitsSuccessState) then) =
      _$HabitsSuccessStateCopyWithImpl<$Res>;
  $Res call({String id, List<Habit> habits});
}

/// @nodoc
class _$HabitsSuccessStateCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res>
    implements $HabitsSuccessStateCopyWith<$Res> {
  _$HabitsSuccessStateCopyWithImpl(
      HabitsSuccessState _value, $Res Function(HabitsSuccessState) _then)
      : super(_value, (v) => _then(v as HabitsSuccessState));

  @override
  HabitsSuccessState get _value => super._value as HabitsSuccessState;

  @override
  $Res call({
    Object? id = freezed,
    Object? habits = freezed,
  }) {
    return _then(HabitsSuccessState(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      habits == freezed
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc

class _$HabitsSuccessState implements HabitsSuccessState {
  const _$HabitsSuccessState(this.id, this.habits);

  @override
  final String id;
  @override
  final List<Habit> habits;

  @override
  String toString() {
    return 'HabitsState.success(id: $id, habits: $habits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HabitsSuccessState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(habits);

  @JsonKey(ignore: true)
  @override
  $HabitsSuccessStateCopyWith<HabitsSuccessState> get copyWith =>
      _$HabitsSuccessStateCopyWithImpl<HabitsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id, List<Habit> habits) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(id, habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id, List<Habit> habits)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(id, habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitsInitialState value) initial,
    required TResult Function(HabitsLoadingState value) loading,
    required TResult Function(HabitsSuccessState value) success,
    required TResult Function(HabitsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitsInitialState value)? initial,
    TResult Function(HabitsLoadingState value)? loading,
    TResult Function(HabitsSuccessState value)? success,
    TResult Function(HabitsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HabitsSuccessState implements HabitsState {
  const factory HabitsSuccessState(String id, List<Habit> habits) =
      _$HabitsSuccessState;

  String get id => throw _privateConstructorUsedError;
  List<Habit> get habits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitsSuccessStateCopyWith<HabitsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsFailureStateCopyWith<$Res> {
  factory $HabitsFailureStateCopyWith(
          HabitsFailureState value, $Res Function(HabitsFailureState) then) =
      _$HabitsFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$HabitsFailureStateCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res>
    implements $HabitsFailureStateCopyWith<$Res> {
  _$HabitsFailureStateCopyWithImpl(
      HabitsFailureState _value, $Res Function(HabitsFailureState) _then)
      : super(_value, (v) => _then(v as HabitsFailureState));

  @override
  HabitsFailureState get _value => super._value as HabitsFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(HabitsFailureState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HabitsFailureState implements HabitsFailureState {
  const _$HabitsFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HabitsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HabitsFailureState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $HabitsFailureStateCopyWith<HabitsFailureState> get copyWith =>
      _$HabitsFailureStateCopyWithImpl<HabitsFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id, List<Habit> habits) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id, List<Habit> habits)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitsInitialState value) initial,
    required TResult Function(HabitsLoadingState value) loading,
    required TResult Function(HabitsSuccessState value) success,
    required TResult Function(HabitsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitsInitialState value)? initial,
    TResult Function(HabitsLoadingState value)? loading,
    TResult Function(HabitsSuccessState value)? success,
    TResult Function(HabitsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HabitsFailureState implements HabitsState {
  const factory HabitsFailureState(Failure failure) = _$HabitsFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitsFailureStateCopyWith<HabitsFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
