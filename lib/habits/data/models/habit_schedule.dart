import 'dart:convert';

import 'package:flutter/foundation.dart';

class HabitSchedule {
  ///If schedule is flexible then the days actually don't matter
  ///because you have only to do the habit X times per week
  ///On the other hand if is not flexible then u have to do habit
  ///X times per week but in specified days as e.g. Monday and Saturday
  final bool isFlexible;

  ///How many times per specific day we have to do the habit
  final Map<int, double> daysToTimes;

  HabitSchedule({
    required this.isFlexible,
    required this.daysToTimes,
  });

  ///Returns how many times we should perform habit per week
  double get howManyTimesPerWeek {
    var count = 0.0;
    for (final v in daysToTimes.values) {
      count += v;
    }
    return count;
  }

  HabitSchedule copyWith({
    bool? isFlexible,
    Map<int, double>? daysToTimes,
  }) {
    return HabitSchedule(
      isFlexible: isFlexible ?? this.isFlexible,
      daysToTimes: daysToTimes ?? this.daysToTimes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isFlexible': isFlexible,
      'daysToTimes':
          daysToTimes.map<String, double>((k, v) => MapEntry('$k', v)),
    };
  }

  factory HabitSchedule.fromMap(Map<String, dynamic> map) {
    return HabitSchedule(
      isFlexible: map['isFlexible'],
      daysToTimes: Map<String, double>.from(map['daysToTimes'])
          .map((v, k) => MapEntry(int.parse(v), k)),
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitSchedule.fromJson(String source) =>
      HabitSchedule.fromMap(json.decode(source));

  @override
  String toString() =>
      'HabitSchedule(isFlexible: $isFlexible, daysToTimes: $daysToTimes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HabitSchedule &&
        other.isFlexible == isFlexible &&
        mapEquals(other.daysToTimes, daysToTimes);
  }

  @override
  int get hashCode => isFlexible.hashCode ^ daysToTimes.hashCode;
}
