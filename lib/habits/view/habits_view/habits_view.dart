import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            final habitCards = state.habits.map((h) => HabitWidget(h)).toList();
            return Container(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    const WelcomeCard(),
                    NoHabitsCard(habitCards.isEmpty),
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
