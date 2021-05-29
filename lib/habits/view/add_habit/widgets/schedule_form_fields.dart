import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/tools/date_formater.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/data/models/habit.dart';
import 'package:sizer/sizer.dart';

import '../add_habit_page.dart';

class ScheduleFormFields extends StatefulWidget {
  const ScheduleFormFields({Key? key}) : super(key: key);

  @override
  _ScheduleFormFieldsState createState() => _ScheduleFormFieldsState();
}

class _ScheduleFormFieldsState extends State<ScheduleFormFields> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey();

  Map<int, double> scheduleDays = {};

  MapEntry<int, double> selectedDay = const MapEntry(1, 0);
  bool isScheduleFixed = true;

  @override
  void initState() {
    scheduleDays =
        context.read<AddHabitBloc>().state.habit.schedule.daysToTimes;
    selectedDay =
        MapEntry(selectedDay.key, scheduleDays[selectedDay.key] ?? 1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddHabitBloc, AddHabitState>(
      listener: (context, state) {
        scheduleDays = state.habit.schedule.daysToTimes;
        //TODO TU JEST NULL
        selectedDay = MapEntry(selectedDay.key, scheduleDays[selectedDay.key]!);
      },
      builder: (context, state) {
        return FormBuilder(
          key: formKey,
          child: Column(
            children: [
              _scheduleTypeDropdownField(),
              if (isScheduleFixed) ...[
                _fixedScheduleDays(),
                const SizedBox(height: 16.0),
                _fixedScheduleTimesPerDay(),
              ] else
                _flexibleScheduleTimesPerWeek(),
            ],
          ),
        );
      },
    );
  }

  Widget _scheduleTypeDropdownField() {
    return FormBuilderDropdown(
      name: 'schedule_type',
      decoration:
          AddHabitPage.inputDecoration.copyWith(labelText: 'Select schedule'),
      allowClear: true,
      clearIcon: Container(),
      onChanged: (String? v) {
        setState(() {
          isScheduleFixed = v == 'Fixed';
          log('Is fixed: $isScheduleFixed');
          //Notify the bloc
          context.read<AddHabitBloc>().add(
                AddHabitEvent.habitChanged(
                  schedule: HabitSchedule(
                    daysToTimes: scheduleDays,
                    isFlexible: !isScheduleFixed,
                  ),
                ),
              );
        });
      },
      initialValue: 'Fixed',
      items: [
        const DropdownMenuItem(
          value: 'Fixed',
          child: Text('Fixed'),
        ),
        const DropdownMenuItem(
          value: 'Flexible',
          child: Text('Flexible'),
        ),
      ],
    );
  }

  Widget _fixedScheduleDays() {
    return Row(
        children: scheduleDays.entries.map(
      (sd) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedDay = sd;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    Text(
                      DateFormater.shortDayName(sd.key),
                      style: AppTextStyle.robotoRegular(size: 14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      sd.value.toString(),
                      style: AppTextStyle.robotoRegular(size: 12),
                    ),
                    Container(
                      height: 4,
                      color: sd.key == selectedDay.key
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ).toList());
  }

  Widget _fixedScheduleTimesPerDay() {
    return SizedBox(
      width: 50.w,
      child: FormBuilderTextField(
        textAlign: TextAlign.center,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: UniqueKey(),
        name: 'fixedScheduleDayInput',
        initialValue: selectedDay.value.toString(),
        keyboardType: TextInputType.number,
        onEditingComplete: () {
          setState(() {});
        },
        decoration: AddHabitPage.inputDecoration.copyWith(
            labelText:
                'Times at ${DateFormater.dayName(selectedDay.key).toLowerCase()}'),
        onChanged: (String? val) {
          if (val == null || val.isEmpty || double.tryParse(val) == null) {
            log('Wrong value of times');
          } else {
            scheduleDays[selectedDay.key] = double.parse(val);
            context.read<AddHabitBloc>().add(
                  AddHabitEvent.habitChanged(
                    schedule: HabitSchedule(
                      daysToTimes: scheduleDays,
                      isFlexible: !isScheduleFixed,
                    ),
                  ),
                );
          }
        },
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.min(context, 0),
          FormBuilderValidators.numeric(context),
        ]),
      ),
    );
  }

  Widget _flexibleScheduleTimesPerWeek() {
    return FormBuilderTextField(
      name: 'flexible_times_per_week',
      maxLength: 5,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration:
          AddHabitPage.inputDecoration.copyWith(labelText: 'Times per week'),
      keyboardType: TextInputType.number,
      onChanged: (String? val) {
        if (val != null && val.isNotEmpty && double.tryParse(val) != null) {
          context.read<AddHabitBloc>().add(
                AddHabitEvent.habitChanged(
                  schedule: HabitSchedule(
                    daysToTimes: {0: double.parse(val)},
                    isFlexible: !isScheduleFixed,
                  ),
                ),
              );
        } else {
          log('Wrong value of times (flexible)');
        }
      },
      validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(context),
          FormBuilderValidators.min(context, 0),
          FormBuilderValidators.numeric(context),
        ],
      ),
    );
  }
}
