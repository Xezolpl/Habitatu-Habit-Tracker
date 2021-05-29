//TODO: Lets add
// - habit routine
// - bloki startowe dla rutyny
// - wskazówki, nagrody, przebieg etc - włąściwie cał system nagród ale to osobno

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habitatu/habits/data/models/habit_day_status.dart';
import 'package:uuid/uuid.dart';

import 'habit_day.dart';
import 'habit_reminder.dart';
import 'habit_schedule.dart';
import 'habit_strength_level.dart';
import 'habit_track.dart';

export 'habit_day.dart';
export 'habit_day_status.dart';
export 'habit_reminder.dart';
export 'habit_schedule.dart';
export 'habit_strength_level.dart';
export 'habit_track.dart';

class Habit {
  final String id;
  final String iconPath;
  final String name;
  final String description;
  final HabitTrack track;
  final List<String> reasons;
  final HabitSchedule schedule;
  final List<String> categoriesIds;
  final HabitStrengthLevel strengthLevel;
  final List<HabitReminder> reminders;

  const Habit({
    required this.id,
    required this.iconPath,
    required this.name,
    this.description = '',
    required this.track,
    this.reasons = const [],
    required this.schedule,
    this.categoriesIds = const [],
    required this.strengthLevel,
    required this.reminders,
  });

  HabitDay getDayAt(DateTime dateTime) {
    final day = track.days.firstWhere(
        (HabitDay d) => DateUtils.isSameDay(d.date, dateTime), orElse: () {
      var requiredTimes = schedule.daysToTimes[dateTime.weekday] ?? 0;
      return HabitDay(
        date: dateTime,
        status: HabitDayStatus.unknown,
        requiredTimes: requiredTimes,
        times: 0,
      );
    });
    return day;
  }

  Habit copyWith({
    String? id,
    String? iconPath,
    String? name,
    String? description,
    HabitTrack? track,
    List<String>? reasons,
    HabitSchedule? schedule,
    List<String>? categoriesIds,
    HabitStrengthLevel? strengthLevel,
    List<HabitReminder>? reminders,
  }) {
    return Habit(
      id: id ?? this.id,
      iconPath: iconPath ?? this.iconPath,
      name: name ?? this.name,
      description: description ?? this.description,
      track: track ?? this.track,
      reasons: reasons ?? this.reasons,
      schedule: schedule ?? this.schedule,
      categoriesIds: categoriesIds ?? this.categoriesIds,
      strengthLevel: strengthLevel ?? this.strengthLevel,
      reminders: reminders ?? this.reminders,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'iconPath': iconPath,
      'name': name,
      'description': description,
      'track': track.toMap(),
      'reasons': reasons,
      'schedule': schedule.toMap(),
      'categoriesIds': categoriesIds,
      'strengthLevel': strengthLevel.value,
      'reminders': reminders.map((x) => x.toMap()).toList(),
    };
  }

  factory Habit.fromMap(Map<String, dynamic> map) {
    return Habit(
      id: map['id'],
      iconPath: map['iconPath'],
      name: map['name'],
      description: map['description'],
      track: HabitTrack.fromMap(map['track']),
      reasons: List<String>.from(map['reasons']),
      schedule: HabitSchedule.fromMap(map['schedule']),
      categoriesIds: List<String>.from(map['categoriesIds']),
      strengthLevel: XHabitStrengthLevel.fromValue(map['strengthLevel']),
      reminders: List<HabitReminder>.from(
          (map['reminders'] as Iterable<dynamic>)
              .map((x) => HabitReminder.fromMap(x))),
    );
  }

  factory Habit.empty() {
    return Habit(
      id: const Uuid().v4(),
      iconPath: 'assets/habit_icons/bicycle.svg',
      name: '',
      description: '',
      reminders: [],
      schedule: HabitSchedule(
        isFlexible: false,
        daysToTimes: {
          1: 1,
          2: 1,
          3: 1,
          4: 1,
          5: 1,
          6: 1,
          7: 1,
        },
      ),
      strengthLevel: HabitStrengthLevel.newbie,
      track: HabitTrack.empty(),
      categoriesIds: [],
      reasons: [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Habit.fromJson(String source) => Habit.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Habit(id: $id, iconPath: $iconPath, name: $name, description: $description, track: $track, reasons: $reasons, schedule: $schedule, categoriesIds: $categoriesIds, strengthLevel: $strengthLevel, reminders: $reminders)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Habit &&
        other.id == id &&
        other.iconPath == iconPath &&
        other.name == name &&
        other.description == description &&
        other.track == track &&
        listEquals(other.reasons, reasons) &&
        other.schedule == schedule &&
        listEquals(other.categoriesIds, categoriesIds) &&
        other.strengthLevel == strengthLevel &&
        listEquals(other.reminders, reminders);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        iconPath.hashCode ^
        name.hashCode ^
        description.hashCode ^
        track.hashCode ^
        reasons.hashCode ^
        schedule.hashCode ^
        categoriesIds.hashCode ^
        strengthLevel.hashCode ^
        reminders.hashCode;
  }
}
