import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class IconsDialogBody extends StatefulWidget {
  final Function(String str) onIconChange;
  final String initialIconPath;

  const IconsDialogBody(
      {required this.onIconChange, required this.initialIconPath, Key? key})
      : super(key: key);

  @override
  _IconsDialogBodyState createState() => _IconsDialogBodyState();
}

class _IconsDialogBodyState extends State<IconsDialogBody> {
  static const List<String> availableIcons = [
    'assets/habit_icons/bicycle.svg',
    'assets/habit_icons/diet.svg',
    'assets/habit_icons/dumbbell.svg',
    'assets/habit_icons/fast_food.svg',
    'assets/habit_icons/fruits.svg',
    'assets/habit_icons/running.svg',
    'assets/habit_icons/swimming.svg',
    'assets/habit_icons/water.svg',
    'assets/habit_icons/weight.svg',
    'assets/habit_icons/workout_calendar.svg',
  ];
  late String selectedIconPath;

  @override
  void initState() {
    super.initState();
    selectedIconPath = widget.initialIconPath;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      height: 60.h,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          ...availableIcons
              .map(
                (iconStr) => InkWell(
                  onTap: () {
                    widget.onIconChange(iconStr);
                    setState(() {
                      selectedIconPath = iconStr;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: selectedIconPath == iconStr
                          ? Border.all(width: 2, color: Colors.amber)
                          : null,
                    ),
                    child: SvgPicture.asset(
                      iconStr,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
