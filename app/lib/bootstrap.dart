import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/config/app_startup.dart';

Future<void> bootstrap() async {
  await configureApp();
  runApp(const ProviderScope(child: JdrApp()));
}
