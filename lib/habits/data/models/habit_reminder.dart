import 'dart:convert';

import 'package:flutter/foundation.dart';

class HabitReminder {
  //Weekday comes from DateTime.thatWeekDayE.G.Monday
  final List<int> weekdays;
  final int hour;
  final int minute;

  HabitReminder({
    required this.weekdays,
    required this.hour,
    required this.minute,
  })   : assert(hour >= 0 && hour <= 23),
        assert(minute >= 0 && minute <= 60);

  HabitReminder copyWith({
    List<int>? weekdays,
    int? hour,
    int? minute,
  }) {
    return HabitReminder(
      weekdays: weekdays ?? this.weekdays,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'weekdays': weekdays,
      'hour': hour,
      'minute': minute,
    };
  }

  factory HabitReminder.fromMap(Map<String, dynamic> map) {
    return HabitReminder(
      weekdays: List<int>.from(map['weekdays']),
      hour: map['hour'],
      minute: map['minute'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitReminder.fromJson(String source) =>
      HabitReminder.fromMap(json.decode(source));

  @override
  String toString() =>
      'HabitReminder(weekdays: $weekdays, hour: $hour, minute: $minute)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HabitReminder &&
        listEquals(other.weekdays, weekdays) &&
        other.hour == hour &&
        other.minute == minute;
  }

  @override
  int get hashCode => weekdays.hashCode ^ hour.hashCode ^ minute.hashCode;
}
