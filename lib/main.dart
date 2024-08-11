import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:social_hub/app/bloc_observer.dart';
import 'package:social_hub/repositories/authorization/authoriztion_repository.dart';
import 'package:social_hub/social_hub.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = const AppBlocObserver();
      final talker = TalkerFlutter.init();
      GetIt.I.registerSingleton(talker);
      GetIt.I<Talker>().debug('Talker start');
      await Firebase.initializeApp();

      final authenticationRepository = AuthenticationRepository();
      await authenticationRepository.user.first;

      runApp(App(authenticationRepository: authenticationRepository));
    },
    (
      exception,
      stacktrace,
    ) async {
      GetIt.I<Talker>().handle(exception, stacktrace);
    },
  );
}
