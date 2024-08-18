import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_hub/router/router.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Есть аккаунт?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            key: const Key('signupForm_login_button'),
            onPressed: () => context.router.push(const LoginRoute()),
            child: const Text(
              'Войти',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
