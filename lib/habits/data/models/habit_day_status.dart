import 'package:flutter/material.dart';

//TODO: DOCS here
enum HabitDayStatus {
  unknown,
  failed,
  halfFailed,
  skip,
  halfDone,
  done,
}

extension XHabitDayStatus on HabitDayStatus {
  String get value {
    return toString().split('.').last;
  }

  ///May throw [FormatException] if value is wrong
  static HabitDayStatus fromValue(String value) {
    for (final stat in HabitDayStatus.values) {
      if (stat.value == value) return stat;
    }
    throw const FormatException(
        'Trying to get value of status but value does not correspond to types');
  }

  Color get color {
    if (this == HabitDayStatus.unknown) return Colors.grey;
    if (this == HabitDayStatus.failed) return Colors.red;
    if (this == HabitDayStatus.halfFailed) return Colors.red[300]!;
    if (this == HabitDayStatus.skip) return Colors.blue;
    if (this == HabitDayStatus.halfDone) return Colors.green[300]!;
    if (this == HabitDayStatus.done) return Colors.green;
    return Colors.black;
  }

  String get name {
    if (this == HabitDayStatus.unknown) return 'Unknown';
    if (this == HabitDayStatus.failed) return 'Failed';
    if (this == HabitDayStatus.halfFailed) return 'Half-failed';
    if (this == HabitDayStatus.skip) return 'Skipped';
    if (this == HabitDayStatus.halfDone) return 'Half done';
    if (this == HabitDayStatus.done) return 'Done';
    return 'Error';
  }

  IconData get icon {
    if (this == HabitDayStatus.unknown) return Icons.event_busy_rounded;
    if (this == HabitDayStatus.failed) return Icons.cancel_outlined;
    if (this == HabitDayStatus.halfFailed) return Icons.cancel_outlined;
    if (this == HabitDayStatus.skip) return Icons.skip_next;
    if (this == HabitDayStatus.halfDone) return Icons.done;
    if (this == HabitDayStatus.done) return Icons.done;
    return Icons.error;
  }
}
