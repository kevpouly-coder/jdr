import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/character_sheet.dart';

class CharacterSheetRepository {
  Future<List<CharacterSheet>> fetchSheets() async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    return const [
      CharacterSheet(
        id: 'sheet-1',
        characterName: 'Lyra',
        level: 4,
        attributes: {'FOR': 14, 'DEX': 18},
      ),
    ];
  }
}

final characterSheetRepositoryProvider =
    Provider<CharacterSheetRepository>((ref) {
  return CharacterSheetRepository();
});
