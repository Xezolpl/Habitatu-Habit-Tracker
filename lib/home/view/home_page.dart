import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/scaffold.dart';
import 'package:habitatu/habits/view/habits_view/habits_view.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      drawer: NavigationDrawer(),
      body: Row(
        children: [Expanded(child: HabitsView())],
      ),
    );
  }
}

class NavigationDrawer extends HookWidget {
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(seconds: 1));
    var width = 20.w;
    if (width < 60) {
      width = 60.0;
    }
    List<NavigationDrawerItem> drawerItems = [
      NavigationDrawerItem(
        name: 'Habits',
        iconData: Icons.run_circle_outlined,
        availableWidth: width,
        isSelected: true,
      ),
    ];
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.purple[700],
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Spacer(),
          for (int i = 0; i < drawerItems.length; i++)
            Container(
              alignment: Alignment.center,
              decoration: i == selectedItem
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    )
                  : null,
              child: Column(
                children: [drawerItems[0]],
              ),
            ),
          const Spacer(),
          Icon(
            Icons.logout,
            size: width / 2,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class NavigationDrawerItem extends StatelessWidget {
  final String name;
  final IconData iconData;
  final double availableWidth;
  final bool isSelected;

  const NavigationDrawerItem({
    required this.name,
    required this.iconData,
    required this.availableWidth,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableWidth,
      height: availableWidth,
      color: isSelected ? Colors.purple : Colors.purple[800],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: availableWidth / 1.8,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
