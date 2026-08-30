import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'character_sheet_controller.dart';

class CharacterSheetPage extends ConsumerWidget {
  const CharacterSheetPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sheetsAsync = ref.watch(characterSheetsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Fiches de personnage')),
      body: sheetsAsync.when(
        data: (sheets) => ListView.builder(
          itemCount: sheets.length,
          itemBuilder: (context, index) {
            final sheet = sheets[index];
            return Card(
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sheet.characterName,
                        style: Theme.of(context).textTheme.titleLarge),
                    Text('Niveau ${sheet.level}'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: sheet.attributes.entries
                          .map((entry) => Chip(
                                label: Text('${entry.key}: ${entry.value}'),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
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
