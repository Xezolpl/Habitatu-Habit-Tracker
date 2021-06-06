import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_text_styled/flutter_text_styled.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';

import '../add_habit_page.dart';

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
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: AppColors.gray),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              TextStyled(
                textStyle: AppTextStyle.robotoRegular(
                  size: 16,
                  color: AppColors.textDarkGray,
                ),
              ).getRichText(
                '[u]Reasons to perform a habit[/u]\n - What motivates you to do the habit\n - What do you want to accomplish by it\n - In which lifefields will it affect you',
              ),
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
          const SizedBox(height: 8),
          for (int i = 0; i < reasonsFields.length; i++)
            FormBuilderTextField(
              name: 'reasonsField$i',
              decoration: AddHabitPage.inputDecoration
                  .copyWith(labelText: 'Reason ${i + 1}'),
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
