import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/screens/auth/login/cubit/login_cubit.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) => context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: theme.disabledColor),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: theme.colorScheme.onPrimary,
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.disabledColor),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'пароль',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.2), fontSize: 14),
            errorText: state.password.displayError != null ? 'Неверный формат пароля' : null,
            errorStyle: TextStyle(color: Colors.red.withOpacity(0.5), fontSize: 12),
          ),
        );
      },
    );
  }
}
