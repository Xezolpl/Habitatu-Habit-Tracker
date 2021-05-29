import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';

import '../add_habit_page.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'description',
      decoration: AddHabitPage.inputDecoration.copyWith(
        labelText: 'Habit description',
      ),
      initialValue: context.read<AddHabitBloc>().state.habit.description,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.max(context, 600),
      ]),
      onChanged: (String? v) {
        if (v != null && v.length <= 600) {
          context
              .read<AddHabitBloc>()
              .add(AddHabitEvent.habitChanged(description: v));
        }
      },
    );
  }
}
