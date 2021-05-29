import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habitatu/app/di.dart';
import 'package:habitatu/auth/logic/auth_service.dart';
import 'package:habitatu/auth/bloc/bloc/auth_bloc.dart';
import 'package:habitatu/core/presentation/theme/app_theme.dart';
import 'package:habitatu/habits/bloc/add_habit_bloc/add_habit_bloc.dart';
import 'package:habitatu/habits/bloc/habit_categories_bloc/habit_categories_bloc.dart';
import 'package:habitatu/habits/bloc/habits_bloc/habits_bloc.dart';
import 'package:habitatu/habits/data/repositories/habit_categories_repository.dart';
import 'package:habitatu/habits/data/repositories/habits_repository.dart';
import 'package:habitatu/l10n/l10n.dart';
import 'package:habitatu/navigation/router.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(getIt<IAuthService>()),
        ),
        BlocProvider(
          create: (_) => HabitsBloc(getIt<IHabitsRepository>())
            ..add(const HabitsEvent.watchAllHabitsCalled()),
        ),
        BlocProvider(
          create: (_) =>
              HabitCategoriesBloc(getIt<IHabitCategoriesRepository>())
                ..add(const HabitCategoriesEvent.loadHabitCategoriesCalled()),
        ),
        BlocProvider(
          create: (_) => AddHabitBloc(),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: AppTheme.light(),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            initialRoute: AppRouter.initRoute(),
            onGenerateRoute: AppRouter.generateRoute(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
