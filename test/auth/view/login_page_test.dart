import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:habitatu/auth/bloc/bloc/auth_bloc.dart';
import 'package:habitatu/auth/view/login_page.dart';
import 'package:habitatu/core/presentation/widgets/scaffold.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

void main() {
  group('LoginPage', () {
    // testWidgets('renders AppScaffold', (tester) async {
    //   await tester.pumpApp(LoginPage());
    //   find.byType(SignInButton).allCandidates.forEach((e) => print(e));
    //   // expect(find.byType(SignInButton), findsWidgets);
    // });
  });

  /*
  group('CounterView', () {
    const incrementButtonKey = Key(
      'counterView_increment_floatingActionButton',
    );
    const decrementButtonKey = Key(
      'counterView_decrement_floatingActionButton',
    );

    late MockAuthBloc counterCubit;

    setUp(() {
      counterCubit = MockAuthBloc();
    });
    testWidgets('renders current count', (tester) async {
      const state = 42;
      when(() => counterCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: counterCubit,
          child: CounterView(),
        ),
      );
      expect(find.text('$state'), findsOneWidget);
    });

    testWidgets('calls increment when increment button is tapped',
        (tester) async {
      when(() => counterCubit.state).thenReturn(0);
      when(() => counterCubit.increment()).thenReturn(null);
      await tester.pumpApp(
        BlocProvider.value(
          value: counterCubit,
          child: CounterView(),
        ),
      );
      await tester.tap(find.byKey(incrementButtonKey));
      verify(() => counterCubit.increment()).called(1);
    });

    testWidgets('calls decrement when decrement button is tapped',
        (tester) async {
      when(() => counterCubit.state).thenReturn(0);
      when(() => counterCubit.decrement()).thenReturn(null);
      await tester.pumpApp(
        BlocProvider.value(
          value: counterCubit,
          child: CounterView(),
        ),
      );
      await tester.tap(find.byKey(decrementButtonKey));
      verify(() => counterCubit.decrement()).called(1);
    });
  });
  */
}
