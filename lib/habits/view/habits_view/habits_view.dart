import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/habits/bloc/habits_bloc/habits_bloc.dart';
import 'package:habitatu/habits/view/habits_view/widgets/habit_widget.dart';
import 'package:habitatu/habits/view/habits_view/widgets/no_habits_card.dart';
import 'package:habitatu/habits/view/habits_view/widgets/welcome_card.dart';

class HabitsView extends StatelessWidget {
  const HabitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitsBloc, HabitsState>(
      builder: (context, state) {
        return state.map(
          initial: (state) => _loadingWidget(),
          loading: (state) => _loadingWidget(),
          failure: (state) => _errorWidget(),
          success: (state) {
            final habitCards = state.habits
                .map(
                  (h) => Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: HabitWidget(h),
                  ),
                )
                .toList();
            return Container(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child: WelcomeCard(),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: AppColors.whiteGray,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            offset: Offset(2, 3),
                            spreadRadius: 1,
                            color: AppColors.lightGray,
                          )
                        ],
                      ),
                      child: Text(
                        'Your habits',
                        style: AppTextStyle.robotoRegular(
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: NoHabitsCard(habitCards.isEmpty),
                    ),
                    ...habitCards
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _loadingWidget() => const Center(child: CircularProgressIndicator());
  Widget _errorWidget() => const Text('ERROR');
}
