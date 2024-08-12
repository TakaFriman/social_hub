import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/screens/auth/login/cubit/login_cubit.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black, fontSize: 14),
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
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
            hintText: 'email',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.2), fontSize: 14),
            errorText: state.email.displayError != null ? 'Неверный формат email' : null,
            errorStyle: TextStyle(color: Colors.red.withOpacity(0.5), fontSize: 12),
          ),
        );
      },
    );
  }
}
