import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:habitatu/habits/data/models/habit_day_status.dart';

import 'habit_day.dart';

class HabitTrack {
  ///List of HabitDays whose user marked in the application.
  ///If there are any days which user didn't mark
  ///we do not store them here
  ///but we are assuming that their status
  ///is [HabitDayStatus.unknown]
  final List<HabitDay> days;
  final DateTime startDate;
  //Current strike and highest strike

  const HabitTrack({
    required this.days,
    required this.startDate,
  });

  factory HabitTrack.empty() {
    return HabitTrack(
      days: [],
      startDate: DateTime.now(),
    );
  }

  HabitTrack copyWith({
    List<HabitDay>? days,
    DateTime? startDate,
  }) {
    return HabitTrack(
      days: days ?? this.days,
      startDate: startDate ?? this.startDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'days': days.map((x) => x.toMap()).toList(),
      'startDate': startDate.millisecondsSinceEpoch,
    };
  }

  factory HabitTrack.fromMap(Map<String, dynamic> map) {
    return HabitTrack(
      days: List<HabitDay>.from(
          (map['days'] as Iterable<dynamic>).map((x) => HabitDay.fromMap(x))),
      startDate: DateTime.fromMillisecondsSinceEpoch(map['startDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitTrack.fromJson(String source) =>
      HabitTrack.fromMap(json.decode(source));

  @override
  String toString() => 'HabitTrack(days: $days, startDate: $startDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HabitTrack &&
        listEquals(other.days, days) &&
        other.startDate == startDate;
  }

  @override
  int get hashCode => days.hashCode ^ startDate.hashCode;
}
