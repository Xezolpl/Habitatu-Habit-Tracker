import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';

import '../add_habit_page.dart';

class NameFormBuilder extends StatelessWidget {
  const NameFormBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'name',
      decoration: AddHabitPage.inputDecoration.copyWith(
        labelText: 'Habit name',
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: context.read<AddHabitBloc>().state.habit.name,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(context),
        FormBuilderValidators.minLength(context, 1),
        FormBuilderValidators.maxLength(context, 50),
      ]),
      onChanged: (String? v) {
        if (v != null && v.length <= 150 && v.isNotEmpty) {
          context.read<AddHabitBloc>().add(AddHabitEvent.habitChanged(name: v));
        }
      },
    );
  }
}
