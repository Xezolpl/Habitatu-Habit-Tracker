import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/styled_card.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/navigation/router.dart';

class NoHabitsCard extends StatelessWidget {
  final bool areThereAnyHabits;
  const NoHabitsCard(this.areThereAnyHabits, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(5, 117, 230, 1),
              Color.fromRGBO(2, 27, 121, 1),
            ])),
        height: 140,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(
                'assets/svg/progress.svg',
                height: 110,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 16.0, right: 16.0),
                    child: Text(
                        areThereAnyHabits
                            ? 'There are no habits.\nCreate the first one.'
                            : 'Add a new Habit and we will help you to keep it.',
                        style: AppTextStyle.robotoRegular(
                            size: 20, color: Colors.white)),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                          backgroundColor: Color.fromRGBO(2, 27, 121, 0.45)),
                      onPressed: () {
                        context
                            .read<AddHabitBloc>()
                            .add(const AddHabitEvent.clearHabitClicked());
                        AppRouter.pushNamed(
                            context: context, route: AppRoute.addHabit);
                      },
                      child: Text(
                        'CREATE HABIT',
                        style: AppTextStyle.robotoMedium(
                            size: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
