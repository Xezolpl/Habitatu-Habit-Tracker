// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_habit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddHabitEventTearOff {
  const _$AddHabitEventTearOff();

  _HabitChanged habitChanged(
      {String? iconPath,
      String? name,
      String? description,
      HabitTrack? track,
      List<String>? reasons,
      HabitSchedule? schedule,
      List<String>? categoriesIds,
      HabitStrengthLevel? strengthLevel,
      List<HabitReminder>? reminders}) {
    return _HabitChanged(
      iconPath: iconPath,
      name: name,
      description: description,
      track: track,
      reasons: reasons,
      schedule: schedule,
      categoriesIds: categoriesIds,
      strengthLevel: strengthLevel,
      reminders: reminders,
    );
  }

  _SaveHabitClicked saveHabitClicked() {
    return const _SaveHabitClicked();
  }

  _ClearHabitClicked clearHabitClicked() {
    return const _ClearHabitClicked();
  }
}

/// @nodoc
const $AddHabitEvent = _$AddHabitEventTearOff();

/// @nodoc
mixin _$AddHabitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)
        habitChanged,
    required TResult Function() saveHabitClicked,
    required TResult Function() clearHabitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)?
        habitChanged,
    TResult Function()? saveHabitClicked,
    TResult Function()? clearHabitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_SaveHabitClicked value) saveHabitClicked,
    required TResult Function(_ClearHabitClicked value) clearHabitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_SaveHabitClicked value)? saveHabitClicked,
    TResult Function(_ClearHabitClicked value)? clearHabitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHabitEventCopyWith<$Res> {
  factory $AddHabitEventCopyWith(
          AddHabitEvent value, $Res Function(AddHabitEvent) then) =
      _$AddHabitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddHabitEventCopyWithImpl<$Res>
    implements $AddHabitEventCopyWith<$Res> {
  _$AddHabitEventCopyWithImpl(this._value, this._then);

  final AddHabitEvent _value;
  // ignore: unused_field
  final $Res Function(AddHabitEvent) _then;
}

/// @nodoc
abstract class _$HabitChangedCopyWith<$Res> {
  factory _$HabitChangedCopyWith(
          _HabitChanged value, $Res Function(_HabitChanged) then) =
      __$HabitChangedCopyWithImpl<$Res>;
  $Res call(
      {String? iconPath,
      String? name,
      String? description,
      HabitTrack? track,
      List<String>? reasons,
      HabitSchedule? schedule,
      List<String>? categoriesIds,
      HabitStrengthLevel? strengthLevel,
      List<HabitReminder>? reminders});
}

/// @nodoc
class __$HabitChangedCopyWithImpl<$Res>
    extends _$AddHabitEventCopyWithImpl<$Res>
    implements _$HabitChangedCopyWith<$Res> {
  __$HabitChangedCopyWithImpl(
      _HabitChanged _value, $Res Function(_HabitChanged) _then)
      : super(_value, (v) => _then(v as _HabitChanged));

  @override
  _HabitChanged get _value => super._value as _HabitChanged;

  @override
  $Res call({
    Object? iconPath = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? track = freezed,
    Object? reasons = freezed,
    Object? schedule = freezed,
    Object? categoriesIds = freezed,
    Object? strengthLevel = freezed,
    Object? reminders = freezed,
  }) {
    return _then(_HabitChanged(
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as HabitTrack?,
      reasons: reasons == freezed
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as HabitSchedule?,
      categoriesIds: categoriesIds == freezed
          ? _value.categoriesIds
          : categoriesIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      strengthLevel: strengthLevel == freezed
          ? _value.strengthLevel
          : strengthLevel // ignore: cast_nullable_to_non_nullable
              as HabitStrengthLevel?,
      reminders: reminders == freezed
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<HabitReminder>?,
    ));
  }
}

/// @nodoc

class _$_HabitChanged implements _HabitChanged {
  const _$_HabitChanged(
      {this.iconPath,
      this.name,
      this.description,
      this.track,
      this.reasons,
      this.schedule,
      this.categoriesIds,
      this.strengthLevel,
      this.reminders});

  @override
  final String? iconPath;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final HabitTrack? track;
  @override
  final List<String>? reasons;
  @override
  final HabitSchedule? schedule;
  @override
  final List<String>? categoriesIds;
  @override
  final HabitStrengthLevel? strengthLevel;
  @override
  final List<HabitReminder>? reminders;

  @override
  String toString() {
    return 'AddHabitEvent.habitChanged(iconPath: $iconPath, name: $name, description: $description, track: $track, reasons: $reasons, schedule: $schedule, categoriesIds: $categoriesIds, strengthLevel: $strengthLevel, reminders: $reminders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitChanged &&
            (identical(other.iconPath, iconPath) ||
                const DeepCollectionEquality()
                    .equals(other.iconPath, iconPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)) &&
            (identical(other.reasons, reasons) ||
                const DeepCollectionEquality()
                    .equals(other.reasons, reasons)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.categoriesIds, categoriesIds) ||
                const DeepCollectionEquality()
                    .equals(other.categoriesIds, categoriesIds)) &&
            (identical(other.strengthLevel, strengthLevel) ||
                const DeepCollectionEquality()
                    .equals(other.strengthLevel, strengthLevel)) &&
            (identical(other.reminders, reminders) ||
                const DeepCollectionEquality()
                    .equals(other.reminders, reminders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(track) ^
      const DeepCollectionEquality().hash(reasons) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(categoriesIds) ^
      const DeepCollectionEquality().hash(strengthLevel) ^
      const DeepCollectionEquality().hash(reminders);

  @JsonKey(ignore: true)
  @override
  _$HabitChangedCopyWith<_HabitChanged> get copyWith =>
      __$HabitChangedCopyWithImpl<_HabitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)
        habitChanged,
    required TResult Function() saveHabitClicked,
    required TResult Function() clearHabitClicked,
  }) {
    return habitChanged(iconPath, name, description, track, reasons, schedule,
        categoriesIds, strengthLevel, reminders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)?
        habitChanged,
    TResult Function()? saveHabitClicked,
    TResult Function()? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (habitChanged != null) {
      return habitChanged(iconPath, name, description, track, reasons, schedule,
          categoriesIds, strengthLevel, reminders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_SaveHabitClicked value) saveHabitClicked,
    required TResult Function(_ClearHabitClicked value) clearHabitClicked,
  }) {
    return habitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_SaveHabitClicked value)? saveHabitClicked,
    TResult Function(_ClearHabitClicked value)? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (habitChanged != null) {
      return habitChanged(this);
    }
    return orElse();
  }
}

abstract class _HabitChanged implements AddHabitEvent {
  const factory _HabitChanged(
      {String? iconPath,
      String? name,
      String? description,
      HabitTrack? track,
      List<String>? reasons,
      HabitSchedule? schedule,
      List<String>? categoriesIds,
      HabitStrengthLevel? strengthLevel,
      List<HabitReminder>? reminders}) = _$_HabitChanged;

  String? get iconPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  HabitTrack? get track => throw _privateConstructorUsedError;
  List<String>? get reasons => throw _privateConstructorUsedError;
  HabitSchedule? get schedule => throw _privateConstructorUsedError;
  List<String>? get categoriesIds => throw _privateConstructorUsedError;
  HabitStrengthLevel? get strengthLevel => throw _privateConstructorUsedError;
  List<HabitReminder>? get reminders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HabitChangedCopyWith<_HabitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveHabitClickedCopyWith<$Res> {
  factory _$SaveHabitClickedCopyWith(
          _SaveHabitClicked value, $Res Function(_SaveHabitClicked) then) =
      __$SaveHabitClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveHabitClickedCopyWithImpl<$Res>
    extends _$AddHabitEventCopyWithImpl<$Res>
    implements _$SaveHabitClickedCopyWith<$Res> {
  __$SaveHabitClickedCopyWithImpl(
      _SaveHabitClicked _value, $Res Function(_SaveHabitClicked) _then)
      : super(_value, (v) => _then(v as _SaveHabitClicked));

  @override
  _SaveHabitClicked get _value => super._value as _SaveHabitClicked;
}

/// @nodoc

class _$_SaveHabitClicked implements _SaveHabitClicked {
  const _$_SaveHabitClicked();

  @override
  String toString() {
    return 'AddHabitEvent.saveHabitClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveHabitClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)
        habitChanged,
    required TResult Function() saveHabitClicked,
    required TResult Function() clearHabitClicked,
  }) {
    return saveHabitClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)?
        habitChanged,
    TResult Function()? saveHabitClicked,
    TResult Function()? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (saveHabitClicked != null) {
      return saveHabitClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_SaveHabitClicked value) saveHabitClicked,
    required TResult Function(_ClearHabitClicked value) clearHabitClicked,
  }) {
    return saveHabitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_SaveHabitClicked value)? saveHabitClicked,
    TResult Function(_ClearHabitClicked value)? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (saveHabitClicked != null) {
      return saveHabitClicked(this);
    }
    return orElse();
  }
}

abstract class _SaveHabitClicked implements AddHabitEvent {
  const factory _SaveHabitClicked() = _$_SaveHabitClicked;
}

/// @nodoc
abstract class _$ClearHabitClickedCopyWith<$Res> {
  factory _$ClearHabitClickedCopyWith(
          _ClearHabitClicked value, $Res Function(_ClearHabitClicked) then) =
      __$ClearHabitClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearHabitClickedCopyWithImpl<$Res>
    extends _$AddHabitEventCopyWithImpl<$Res>
    implements _$ClearHabitClickedCopyWith<$Res> {
  __$ClearHabitClickedCopyWithImpl(
      _ClearHabitClicked _value, $Res Function(_ClearHabitClicked) _then)
      : super(_value, (v) => _then(v as _ClearHabitClicked));

  @override
  _ClearHabitClicked get _value => super._value as _ClearHabitClicked;
}

/// @nodoc

class _$_ClearHabitClicked implements _ClearHabitClicked {
  const _$_ClearHabitClicked();

  @override
  String toString() {
    return 'AddHabitEvent.clearHabitClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearHabitClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)
        habitChanged,
    required TResult Function() saveHabitClicked,
    required TResult Function() clearHabitClicked,
  }) {
    return clearHabitClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? iconPath,
            String? name,
            String? description,
            HabitTrack? track,
            List<String>? reasons,
            HabitSchedule? schedule,
            List<String>? categoriesIds,
            HabitStrengthLevel? strengthLevel,
            List<HabitReminder>? reminders)?
        habitChanged,
    TResult Function()? saveHabitClicked,
    TResult Function()? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (clearHabitClicked != null) {
      return clearHabitClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitChanged value) habitChanged,
    required TResult Function(_SaveHabitClicked value) saveHabitClicked,
    required TResult Function(_ClearHabitClicked value) clearHabitClicked,
  }) {
    return clearHabitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitChanged value)? habitChanged,
    TResult Function(_SaveHabitClicked value)? saveHabitClicked,
    TResult Function(_ClearHabitClicked value)? clearHabitClicked,
    required TResult orElse(),
  }) {
    if (clearHabitClicked != null) {
      return clearHabitClicked(this);
    }
    return orElse();
  }
}

abstract class _ClearHabitClicked implements AddHabitEvent {
  const factory _ClearHabitClicked() = _$_ClearHabitClicked;
}

/// @nodoc
class _$AddHabitStateTearOff {
  const _$AddHabitStateTearOff();

  _AddHabitState call({required Habit habit, required bool wasSaved}) {
    return _AddHabitState(
      habit: habit,
      wasSaved: wasSaved,
    );
  }
}

/// @nodoc
const $AddHabitState = _$AddHabitStateTearOff();

/// @nodoc
mixin _$AddHabitState {
  Habit get habit => throw _privateConstructorUsedError;
  bool get wasSaved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddHabitStateCopyWith<AddHabitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHabitStateCopyWith<$Res> {
  factory $AddHabitStateCopyWith(
          AddHabitState value, $Res Function(AddHabitState) then) =
      _$AddHabitStateCopyWithImpl<$Res>;
  $Res call({Habit habit, bool wasSaved});
}

/// @nodoc
class _$AddHabitStateCopyWithImpl<$Res>
    implements $AddHabitStateCopyWith<$Res> {
  _$AddHabitStateCopyWithImpl(this._value, this._then);

  final AddHabitState _value;
  // ignore: unused_field
  final $Res Function(AddHabitState) _then;

  @override
  $Res call({
    Object? habit = freezed,
    Object? wasSaved = freezed,
  }) {
    return _then(_value.copyWith(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      wasSaved: wasSaved == freezed
          ? _value.wasSaved
          : wasSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddHabitStateCopyWith<$Res>
    implements $AddHabitStateCopyWith<$Res> {
  factory _$AddHabitStateCopyWith(
          _AddHabitState value, $Res Function(_AddHabitState) then) =
      __$AddHabitStateCopyWithImpl<$Res>;
  @override
  $Res call({Habit habit, bool wasSaved});
}

/// @nodoc
class __$AddHabitStateCopyWithImpl<$Res>
    extends _$AddHabitStateCopyWithImpl<$Res>
    implements _$AddHabitStateCopyWith<$Res> {
  __$AddHabitStateCopyWithImpl(
      _AddHabitState _value, $Res Function(_AddHabitState) _then)
      : super(_value, (v) => _then(v as _AddHabitState));

  @override
  _AddHabitState get _value => super._value as _AddHabitState;

  @override
  $Res call({
    Object? habit = freezed,
    Object? wasSaved = freezed,
  }) {
    return _then(_AddHabitState(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      wasSaved: wasSaved == freezed
          ? _value.wasSaved
          : wasSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddHabitState implements _AddHabitState {
  const _$_AddHabitState({required this.habit, required this.wasSaved});

  @override
  final Habit habit;
  @override
  final bool wasSaved;

  @override
  String toString() {
    return 'AddHabitState(habit: $habit, wasSaved: $wasSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddHabitState &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)) &&
            (identical(other.wasSaved, wasSaved) ||
                const DeepCollectionEquality()
                    .equals(other.wasSaved, wasSaved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habit) ^
      const DeepCollectionEquality().hash(wasSaved);

  @JsonKey(ignore: true)
  @override
  _$AddHabitStateCopyWith<_AddHabitState> get copyWith =>
      __$AddHabitStateCopyWithImpl<_AddHabitState>(this, _$identity);
}

abstract class _AddHabitState implements AddHabitState {
  const factory _AddHabitState({required Habit habit, required bool wasSaved}) =
      _$_AddHabitState;

  @override
  Habit get habit => throw _privateConstructorUsedError;
  @override
  bool get wasSaved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddHabitStateCopyWith<_AddHabitState> get copyWith =>
      throw _privateConstructorUsedError;
}
