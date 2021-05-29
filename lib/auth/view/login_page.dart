import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:habitatu/auth/bloc/bloc/auth_bloc.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/scaffold.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  LoginPage({Key? key}) : super(key: key);

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(color: color, width: 2),
    );
  }

  InputDecoration _getTextInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      labelStyle: AppTextStyle.robotoRegular(color: Colors.blueGrey, size: 16),
      focusedBorder: _getBorder(AppColors.accentGold),
      enabledBorder: _getBorder(Colors.blueGrey),
      errorBorder: _getBorder(Colors.red),
      focusedErrorBorder: _getBorder(Colors.red),
    );
  }

  Widget _loginButton(BuildContext context) {
    return ElevatedButton(
      key: const Key('LoginPage_loginButton'),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.accentGold),
      ),
      onPressed: () {
        final state = _formKey.currentState;
        context
            .read<AuthBloc>()
            .add(const AuthEvent.loginClicked('xezolpl@wp.pl', 'Kotek123*'));
        if (state != null && state.validate()) {
          final email = state.fields['email']!.value as String;
          final password = state.fields['password']!.value as String;
          //TODO: ENABLE IT FOR PRODUCTION
          // context.read<AuthBloc>().add(AuthEvent.loginClicked(email, password));
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 65.w,
        height: 50,
        child: Text(
          'Login',
          style: AppTextStyle.robotoMedium(size: 18, color: AppColors.white),
        ),
      ),
    );
  }

  Widget _googleSignInButtonv2(BuildContext context) {
    return SignInButton(
      Buttons.Google,
      onPressed: () {
        context.read<AuthBloc>().add(const AuthEvent.googleSignInClicked());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Center(
                child: Text(
                  'Habitatu',
                  style: AppTextStyle.robotoMedium(
                    size: 60,
                    color: AppColors.textDark,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 70.w,
              child: FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'email',
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _getTextInputDecoration('Email'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context),
                        FormBuilderValidators.email(context),
                        FormBuilderValidators.maxLength(context, 300),
                      ]),
                    ),
                    const SizedBox(height: 16.0),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      name: 'password',
                      obscureText: true,
                      decoration: _getTextInputDecoration('Password'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context),
                        FormBuilderValidators.match(context,
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d\w\W]{8,}$',
                            errorText: '+1 small and big letter, and number'),
                        FormBuilderValidators.minLength(context, 8),
                        FormBuilderValidators.maxLength(context, 80),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            _loginButton(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: _googleSignInButtonv2(context),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
