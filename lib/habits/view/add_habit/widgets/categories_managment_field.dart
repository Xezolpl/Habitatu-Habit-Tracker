import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:habitatu/core/models/failures.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/bloc/habit_categories_bloc/habit_categories_bloc.dart';
import 'package:habitatu/habits/data/models/habit_category.dart';
import 'package:uuid/uuid.dart';

class HabitCategoriesManagmentWidget extends StatefulWidget {
  const HabitCategoriesManagmentWidget({Key? key}) : super(key: key);

  @override
  _HabitCategoriesManagmentWidgetState createState() =>
      _HabitCategoriesManagmentWidgetState();
}

class _HabitCategoriesManagmentWidgetState
    extends State<HabitCategoriesManagmentWidget> {
  final _formKey = GlobalKey<FormBuilderState>();

  Color newCategoryColor = Colors.amber;
  Color pickerColor = Colors.amber;
  String newCategoryName = '';
  HabitCategory? selectedCategory;
  List<String> usedCategoryNames = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitCategoriesBloc, HabitCategoriesState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => _loadingWidget(),
        loading: (_) => _loadingWidget(),
        success: (s) => _buildLoaded(context, s.habitCategories),
        failure: (s) => _errorWidget(s.failure),
      );
    });
  }

  Widget _loadingWidget() => const Center(child: CircularProgressIndicator());
  Widget _errorWidget(Failure failure) => Text('ERROR $failure');

  Widget _buildLoaded(BuildContext context, List<HabitCategory> categories) {
    return FormBuilder(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Select category to edit it :)'),
            Center(
              child: InkWell(
                onTap: () {
                  _showColorPickerDialog(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: newCategoryColor,
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 24.0),
                  child: Text(
                    'Select color',
                    style: AppTextStyle.robotoMedium(
                      color:
                          AppColors.getTextColorForBackground(newCategoryColor),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: FormBuilderTextField(
                key: UniqueKey(),
                name: 'ignore2',
                initialValue: selectedCategory?.name ?? newCategoryName,
                maxLength: 80,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.minLength(context, 1),
                  (String? str) {
                    if (usedCategoryNames.contains(str)) {
                      return 'Name already in use';
                    }
                    return null;
                  }
                ]),
                decoration:
                    const InputDecoration(labelText: 'New category name'),
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                onChanged: (String? val) {
                  if (val != null) {
                    newCategoryName = val;
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.read<HabitCategoriesBloc>().add(
                            HabitCategoriesEvent.addHabitCategoryClicked(
                              HabitCategory(
                                  id: const Uuid().v4(),
                                  name: newCategoryName,
                                  color: newCategoryColor),
                            ),
                          );
                    }
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    if ((_formKey.currentState?.validate() ?? false) &&
                        selectedCategory != null) {
                      context.read<HabitCategoriesBloc>().add(
                            HabitCategoriesEvent.habitCategoryChanged(
                              HabitCategory(
                                  id: selectedCategory!.id,
                                  name: newCategoryName,
                                  color: newCategoryColor),
                            ),
                          );
                    }
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    if (selectedCategory != null) {
                      context.read<HabitCategoriesBloc>().add(
                            HabitCategoriesEvent.removeHabitCategoryClicked(
                                selectedCategory!.id),
                          );
                    }
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryItem(HabitCategory category) {
    bool isSelected = selectedCategory == category;
    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedCategory = null;
          } else {
            selectedCategory = category;
            newCategoryColor = category.color;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: category.color,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isSelected) ...[
              const Icon(
                Icons.done,
                size: 22,
              ),
              const SizedBox(width: 16.0),
            ],
            Text(
              category.name,
              style: AppTextStyle.robotoMedium(
                color: AppColors.getTextColorForBackground(category.color),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: pickerColor,
              onColorChanged: (c) {
                pickerColor = c;
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  newCategoryColor = pickerColor;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Got it'),
            ),
          ],
        );
      },
    );
  }
}
