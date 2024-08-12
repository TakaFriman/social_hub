import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/router/router.dart';
import 'package:social_hub/screens/auth/register/cubit/register_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('signupForm_login_flatButton'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Colors.green,
          ),
          onPressed: () => context.router.push(const LoginRoute()),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Center(
                child: Text('Есть аккаунт',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: -0.5, color: Colors.white))),
          ),
        );
      },
    );
  }
}
