import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:social_hub/router/router.dart';
import 'package:social_hub/screens/auth/register/components/components.dart';
import 'package:social_hub/screens/auth/register/cubit/register_cubit.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Регистрация не удалась')),
            );
        }
      },
      child: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 32),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
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
                              const ConfirmPasswordInput(),
                              const SizedBox(height: 24),
                              const SignUpButton(),
                              const LoginRow(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
