import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/app_bar.dart';
import 'package:habitatu/core/presentation/widgets/scaffold.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/bloc/habits_bloc/habits_bloc.dart';

import 'widgets/categories_adding_field.dart';
import 'widgets/description_field.dart';
import 'widgets/habit_icon_display.dart';
import 'widgets/name_form_field.dart';
import 'widgets/reasons_form_field.dart';
import 'widgets/reminders_adding_field.dart';
import 'widgets/schedule_form_fields.dart';
import 'widgets/start_date_field.dart';
import 'widgets/submit_form_button.dart';

class AddHabitPage extends StatelessWidget {
  static final _basicBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      width: 2.0,
      color: AppColors.gray,
    ),
  );
  static final inputDecoration = InputDecoration(
    labelStyle: AppTextStyle.robotoRegular(color: AppColors.gray, size: 16),
    focusedBorder: _basicBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.accentGold, width: 2)),
    border: _basicBorder,
  );

  static Widget styledTextButton(
          {required String text, required Function() onPressed}) =>
      TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: AppColors.accentGold,
            elevation: 2,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyle.robotoMedium(
            size: 16,
            color: AppColors.white,
          ),
        ),
      );

  final _formKey = GlobalKey<FormBuilderState>();
  late final List<Widget> children = [
    const HabitIconDisplay(),
    const NameFormBuilder(),
    const DescriptionField(),
    const ReasonsFormBuilderField(),
    const ScheduleFormFields(),
    const StartDateField(),
    RemindersAddingField(_formKey),
    // const CategoriesAddingField(),
    const SizedBox(height: 12),
    SubmitFormButton(_formKey),
  ];
  AddHabitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarBuilder.buildAppBar('Add a new habit'),
      body: BlocListener<AddHabitBloc, AddHabitState>(
        listener: (context, state) {
          if (state.wasSaved) {
            var bloc = context.read<HabitsBloc>();
            bloc.add(HabitsEvent.addHabitClicked(state.habit));
            Navigator.of(context).pop();
          }
        },
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: WillPopScope(
            onWillPop: () async {
              FocusScope.of(context).unfocus();
              return true;
            },
            child: FormBuilder(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                children: children
                    .map(
                      (w) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: w,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
