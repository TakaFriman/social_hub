import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:social_hub/screens/auth/login/components/components.dart';
import 'package:social_hub/screens/auth/login/cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Произошла ошибка! Попробуйте еще раз'),
              ),
            );
        }
      },
      child: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.black,
                          ),
                          const SizedBox(height: 32),
                          const EmailInput(),
                          const SizedBox(height: 12),
                          const PasswordInput(),
                          const SizedBox(height: 12),
                          const LoginButton(),
                        ],
                      ),
                    ),
                  ),
                  const SignUpButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
