import 'dart:convert';

import 'habit_day_status.dart';

class HabitDay {
  final DateTime date;
  //Times of habit performed
  final double times;
  final double requiredTimes;
  final HabitDayStatus status;
  final String note;

  HabitDay({
    //We actually store that value in schedule so here we only calculate it :D
    //If we want e.g. status SKIPPED then pass it here
    HabitDayStatus? status,
    required this.date,
    required this.times,
    required this.requiredTimes,
    this.note = '',
  }) : this.status =
            status ?? getStatus(times: times, requiredTimes: requiredTimes);

  static HabitDayStatus getStatus(
      {required double times, required double requiredTimes}) {
    //If is at least as much as should be then its DONE
    if (times >= requiredTimes) {
      return HabitDayStatus.done;
    }
    //If is 0 then  its FAILED
    if (times == 0) {
      return HabitDayStatus.failed;
    }
    //If is less or equal than half of required then its HALF_FAILED
    if (times <= requiredTimes / 2) {
      return HabitDayStatus.halfFailed;
    }
    //Else if its more than 1/2 or requiredTiems then its HALF_DONE
    else {
      return HabitDayStatus.halfDone;
    }
  }

  HabitDay copyWith({
    DateTime? date,
    double? times,
    double? requiredTimes,
    HabitDayStatus? status,
    String? note,
  }) {
    return HabitDay(
      date: date ?? this.date,
      times: times ?? this.times,
      requiredTimes: requiredTimes ?? this.requiredTimes,
      status: status ?? this.status,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date.millisecondsSinceEpoch,
      'times': times,
      'requiredTimes': requiredTimes,
      'status': status.value,
      'note': note,
    };
  }

  factory HabitDay.fromMap(Map<String, dynamic> map) {
    return HabitDay(
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      times: map['times'],
      requiredTimes: map['requiredTimes'],
      status: XHabitDayStatus.fromValue(map['status']),
      note: map['note'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitDay.fromJson(String source) =>
      HabitDay.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HabitDay(date: $date, times: $times, requiredTimes: $requiredTimes, status: $status, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HabitDay &&
        other.date == date &&
        other.times == times &&
        other.requiredTimes == requiredTimes &&
        other.status == status &&
        other.note == note;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        times.hashCode ^
        requiredTimes.hashCode ^
        status.hashCode ^
        note.hashCode;
  }
}
