import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/tools/date_formater.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/data/models/habit_reminder.dart';
import 'package:habitatu/habits/view/add_habit/add_habit_page.dart';

class RemindersAddingField extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  const RemindersAddingField(this.formKey, {Key? key}) : super(key: key);

  @override
  _RemindersAddingFieldState createState() => _RemindersAddingFieldState();
}

class _RemindersAddingFieldState extends State<RemindersAddingField> {
  List<int> reminderWeekdays = [];
  List<HabitReminder> reminders = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.gray),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Text('Reminders'),
          const Divider(
            thickness: 2,
            color: AppColors.gray,
          ),
          Row(
            children: [
              for (int i = 1; i <= 7; i++)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (reminderWeekdays.contains(i)) {
                            reminderWeekdays.remove(i);
                          } else {
                            reminderWeekdays.add(i);
                          }
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 4,
                                color: reminderWeekdays.contains(i)
                                    ? Colors.green
                                    : AppColors.gray)),
                        alignment: Alignment.center,
                        child: Text(DateFormater.shortDayName(i)),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          ...reminders
              .map((r) => Container(
                    width: double.infinity,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.gray),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                              'Reminder at ${r.hour}:${r.minute} for days ${r.weekdays.map(DateFormater.shortDayName).reduce((a, b) => "$a, $b")}'),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              reminders.remove(r);
                            });
                          },
                        )
                      ],
                    ),
                  ))
              .toList(),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: FormBuilderDateTimePicker(
                  name: 'reminder_time',
                  inputType: InputType.time,
                  decoration: AddHabitPage.inputDecoration.copyWith(
                    labelText: 'Reminder #${reminders.length + 1} Time',
                  ),
                  alwaysUse24HourFormat: true,
                  initialTime: const TimeOfDay(hour: 8, minute: 0),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          final time = widget.formKey.currentState
                              ?.fields['reminder_time']?.value as DateTime?;
                          if (time != null && reminderWeekdays.isNotEmpty) {
                            reminders.add(
                              HabitReminder(
                                hour: time.hour,
                                minute: time.minute,
                                weekdays: List.from(reminderWeekdays),
                              ),
                            );
                            context.read<AddHabitBloc>().add(
                                AddHabitEvent.habitChanged(
                                    reminders: reminders));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(time == null
                                  ? 'Invalid time selected'
                                  : 'Select specific days for reminder'),
                            ));
                          }
                        },
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
