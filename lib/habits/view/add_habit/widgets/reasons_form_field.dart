import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';

class ReasonsFormBuilderField extends StatefulWidget {
  const ReasonsFormBuilderField({Key? key}) : super(key: key);

  @override
  _ReasonsFormBuilderFieldState createState() =>
      _ReasonsFormBuilderFieldState();
}

class _ReasonsFormBuilderFieldState extends State<ReasonsFormBuilderField> {
  List<String> reasonsFields = ['', '', ''];

  @override
  void initState() {
    super.initState();
    reasonsFields = context.read<AddHabitBloc>().state.habit.reasons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColors.gray),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text('Reasons'),
              const Spacer(),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      if (reasonsFields.length < 5) {
                        reasonsFields.add('');
                      } else {
                        log('Trying to exceed the maximum amount of reasons');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'You may have maximally 5 reasons. Sorry :/'),
                          ),
                        );
                      }
                    },
                  );
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          for (int i = 0; i < reasonsFields.length; i++)
            FormBuilderTextField(
              name: 'reasonsField$i',
              decoration: InputDecoration(labelText: 'Reason ${i + 1}'),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.maxLength(context, 150),
                ],
              ),
              onChanged: (String? v) {
                if (v != null && v.length <= 150) {
                  reasonsFields[i] = v;
                  context
                      .read<AddHabitBloc>()
                      .add(AddHabitEvent.habitChanged(reasons: reasonsFields));
                }
              },
            )
        ],
      ),
    );
  }
}
