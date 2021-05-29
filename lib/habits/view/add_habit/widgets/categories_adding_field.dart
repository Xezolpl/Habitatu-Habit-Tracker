import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/bloc/habit_categories_bloc/habit_categories_bloc.dart';
import 'package:habitatu/habits/data/models/habit_category.dart';

import 'categories_managment_field.dart';

Widget _loadingWidget() => const CircularProgressIndicator();
Widget _errorWidget() => const Text('ERROR');

class CategoriesAddingField extends StatelessWidget {
  const CategoriesAddingField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitCategoriesBloc, HabitCategoriesState>(
      builder: (context, state) {
        return state.map(
          loading: (state) => _loadingWidget(),
          initial: (state) => _loadingWidget(),
          failure: (state) => _errorWidget(),
          success: (state) {
            return Row(
              children: [
                Expanded(
                  child: FormBuilderFilterChip(
                    name: 'categories',
                    shadowColor: Colors.white,
                    selectedShadowColor: Colors.white,
                    selectedColor: Colors.white,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    labelPadding: EdgeInsets.zero,
                    onChanged: (List<String?>? selectedCategories) {
                      if (selectedCategories != null) {
                        selectedCategories.removeWhere((c) => c == null);
                        var listWithoutNulls =
                            selectedCategories.map((s) => s!).toList();
                        context.read<AddHabitBloc>().add(
                            AddHabitEvent.habitChanged(
                                categoriesIds: listWithoutNulls));
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Categories',
                    ),
                    options: state.habitCategories
                        .map(
                          (c) => FormBuilderFieldOption(
                            value: c.id,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: c.color.withOpacity(1),
                              ),
                              child: Text(
                                c.name,
                                style: AppTextStyle.robotoBold(
                                  size: 16,
                                  color: AppColors.getTextColorForBackground(
                                      c.color),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.accentGold,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text(
                                'Add a new category or edit some by clickin on it'),
                            content: HabitCategoriesManagmentWidget(),
                          );
                        });
                  },
                  child: Text(
                    'Manage categories',
                    style: AppTextStyle.robotoMedium(
                        color: Colors.white, size: 14),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
