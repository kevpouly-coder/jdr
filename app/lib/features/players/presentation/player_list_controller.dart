import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/player_repository.dart';
import '../domain/player.dart';

final playerListProvider = FutureProvider<List<Player>>((ref) async {
  final repository = ref.watch(playerRepositoryProvider);
  return repository.fetchPlayers();
});
