import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_hub/social_hub.dart';

void main() async {
  await runZonedGuarded(() async {
    runApp(const SocialHub());
  }, (exception, stacktrace) async {
    print(exception.toString());
  });
}
