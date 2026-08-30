import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/auth/presentation/login_page.dart';
import 'features/players/presentation/player_list_page.dart';
import 'features/sheets/presentation/character_sheet_page.dart';

/// Application principale avec configuration Material.
class JdrApp extends ConsumerWidget {
  const JdrApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'JDR Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/players': (context) => const PlayerListPage(),
        '/sheets': (context) => const CharacterSheetPage(),
      },
    );
  }
}
