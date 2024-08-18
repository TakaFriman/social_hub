import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_hub/router/router.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Нет аккаунта?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            key: const Key('loginForm_createAccount_button'),
            onPressed: () => context.router.push(const RegisterRoute()),
            child: const Text(
              'Зарегистрироваться',
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
