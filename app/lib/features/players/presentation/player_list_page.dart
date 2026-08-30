import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'player_list_controller.dart';

class PlayerListPage extends ConsumerWidget {
  const PlayerListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playersAsync = ref.watch(playerListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Joueurs')),
      body: playersAsync.when(
        data: (players) => ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) {
            final player = players[index];
            return ListTile(
              title: Text(player.name),
              subtitle: Text(player.role),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Erreur: ${error.toString()}'),
        ),
      ),
    );
  }
}
