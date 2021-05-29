import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../add_habit_page.dart';

class StartDateField extends StatefulWidget {
  const StartDateField({Key? key}) : super(key: key);

  @override
  _StartDateFieldState createState() => _StartDateFieldState();
}

class _StartDateFieldState extends State<StartDateField> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: 'start_date',
      inputType: InputType.date,
      initialDate: DateTime.now(),
      initialValue: DateTime.now(),
      format: DateFormat.yMMMd(),
      decoration: AddHabitPage.inputDecoration.copyWith(
        labelText: 'Habit start date',
      ),
      alwaysUse24HourFormat: true,
    );
  }
}
