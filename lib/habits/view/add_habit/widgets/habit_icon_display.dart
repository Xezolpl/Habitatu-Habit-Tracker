import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';

import 'select_habit_icon_dialog_body.dart';

class HabitIconDisplay extends StatefulWidget {
  const HabitIconDisplay({Key? key}) : super(key: key);

  @override
  _HabitIconDisplayState createState() => _HabitIconDisplayState();
}

class _HabitIconDisplayState extends State<HabitIconDisplay> {
  late String iconPath;

  @override
  void initState() {
    super.initState();
    iconPath = context.read<AddHabitBloc>().state.habit.iconPath;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.amber),
            ),
            child: SvgPicture.asset(
              iconPath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              key: UniqueKey(),
            ),
          ),
          const Spacer(flex: 3),
          MaterialButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  var selectedIconPath = iconPath;
                  return AlertDialog(
                    title: const Text('Select image'),
                    content: IconsDialogBody(
                        initialIconPath: iconPath,
                        onIconChange: (str) {
                          setState(() {
                            selectedIconPath = str;
                          });
                        }),
                    actions: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            iconPath = selectedIconPath;
                          });
                          //Call bloc
                          context.read<AddHabitBloc>().add(
                              AddHabitEvent.habitChanged(iconPath: iconPath));
                          //Pop the dialog
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Got it!',
                          style: AppTextStyle.robotoMedium(
                              size: 14, color: Theme.of(context).accentColor),
                        ),
                      )
                    ],
                  );
                },
              );
            },
            child: Text(
              'Select Image',
              style: AppTextStyle.robotoMedium(size: 14, color: Colors.white),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
