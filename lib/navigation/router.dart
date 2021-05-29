import 'package:flutter/material.dart';
import 'package:habitatu/auth/view/splash_screen.dart';
import 'package:habitatu/core/presentation/transitions/no_animation_transition.dart';
import 'package:habitatu/habits/view/add_habit/add_habit_page.dart';

enum RouteType {
  push,
  pop,
}

enum AppRoute {
  splashScreen,
  addHabit,
  habitDetails,
}

extension AppRouteExtension on AppRoute {
  String getRouteName() => this.toString();
}

abstract class AppRouter {
  static String initRoute() => AppRoute.splashScreen.getRouteName();

  static final Map<String, PageRoute Function(RouteSettings)> _routes = {
    AppRoute.splashScreen.getRouteName(): (settings) => NoAnimationPageRoute(
          builder: (context) => const SplashScreen(),
        ),
    AppRoute.addHabit.getRouteName(): (settings) {
      // final args = settings.arguments as List<Object>;
      return MaterialPageRoute(
        builder: (context) => AddHabitPage(),
        settings: settings,
      );
    },
    AppRoute.habitDetails.getRouteName(): (settings) {
      //final args = settings.arguments as List<Object>?;
      return MaterialPageRoute(
        builder: (context) =>
            Container(), //HabitDetailsPage(args!.first as Habit),
        settings: settings,
      );
    }
  };

  static void pushNamed({
    required BuildContext context,
    required AppRoute route,
    Object? arguments,
  }) {
    var routeId = route.getRouteName();
    Navigator.pushNamed(context, routeId, arguments: arguments);
  }

  static RouteFactory generateRoute() {
    return (settings) => _routes[settings.name!]!(settings);
  }
}
