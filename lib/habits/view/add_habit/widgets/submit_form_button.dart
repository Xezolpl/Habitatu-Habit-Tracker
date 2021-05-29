import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/bloc/habits_bloc/habits_bloc.dart';
import 'package:habitatu/habits/data/models/habit.dart';

import '../add_habit_page.dart';

class SubmitFormButton extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const SubmitFormButton(this.formKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddHabitPage.styledTextButton(
      text: 'Submit',
      onPressed: () {
        formKey.currentState?.save();
        if (formKey.currentState?.validate() ?? false) {
          final formValue = formKey.currentState?.value;
          if (formValue != null) {
            List<String> reasons = [];
            try {
              reasons.add(formValue['reasonsField0']);
              reasons.add(formValue['reasonsField1']);
              reasons.add(formValue['reasonsField2']);
              reasons.add(formValue['reasonsField3']);
              reasons.add(formValue['reasonsField4']);
              // ignore: empty_catches
            } catch (e) {}

            context.read<AddHabitBloc>()
              ..add(
                AddHabitEvent.habitChanged(
                  name: formValue['name'],
                  description: formValue['description'],
                  reasons: reasons,
                  strengthLevel: HabitStrengthLevel.newbie,
                  track: HabitTrack.empty(),
                ),
              )
              ..add(const AddHabitEvent.saveHabitClicked());
          }
        }
      },
    );
  }
}
