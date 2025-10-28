import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/character_sheet_repository.dart';
import '../domain/character_sheet.dart';

final characterSheetsProvider =
    FutureProvider<List<CharacterSheet>>((ref) async {
  final repository = ref.watch(characterSheetRepositoryProvider);
  return repository.fetchSheets();
});
