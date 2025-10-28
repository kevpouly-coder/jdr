import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/player.dart';

class PlayerRepository {
  PlayerRepository();

  Future<List<Player>> fetchPlayers() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const [
      Player(id: '1', name: 'Alice', role: 'MJ'),
      Player(id: '2', name: 'Bob', role: 'Guerrier'),
    ];
  }
}

final playerRepositoryProvider = Provider<PlayerRepository>((ref) {
  return PlayerRepository();
});
