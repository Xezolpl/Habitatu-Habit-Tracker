import 'package:habitatu/habits/data/models/habit.dart';
import 'package:habitatu/habits/data/models/habit_day.dart';
import 'package:habitatu/habits/data/models/habit_day_status.dart';
import 'package:habitatu/habits/data/models/habit_reminder.dart';
import 'package:habitatu/habits/data/models/habit_schedule.dart';
import 'package:habitatu/habits/data/models/habit_strength_level.dart';
import 'package:habitatu/habits/data/models/habit_track.dart';

class TestVariables {
  static final workoutHabit = Habit(
    id: 'sdasjdsandjasdasndas',
    iconPath: 'assets/png/001-marijuana.png',
    name: 'Workout',
    description: 'Daily training to lvl up ur muscles',
    track: HabitTrack(
      days: [
        for (int i = 0; i < 7; i++)
          HabitDay(
            date: DateTime.now().add(Duration(days: i)),
            times: i.toDouble(),
            requiredTimes: i.toDouble(),
            note: 'jakas notratka ',
            status: HabitDayStatus.values[i % HabitDayStatus.values.length],
          ),
      ],
      startDate: DateTime.now(),
    ),
    reasons: ['Strength', 'Health'],
    schedule: HabitSchedule(isFlexible: false, daysToTimes: {
      0: 20.5,
    }),
    categoriesIds: [],
    strengthLevel: HabitStrengthLevel.inProgress,
    reminders: [
      HabitReminder(weekdays: [DateTime.monday], hour: 17, minute: 30)
    ],
  );
}
