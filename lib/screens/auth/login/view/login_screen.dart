import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/repositories/authorization/authoriztion_repository.dart';
import 'package:social_hub/screens/auth/login/cubit/login_cubit.dart';
import 'package:social_hub/screens/auth/login/login.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
        child: const LoginForm(),
      ),
    );
  }
}
