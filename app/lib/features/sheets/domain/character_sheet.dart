import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_sheet.freezed.dart';
part 'character_sheet.g.dart';

@freezed
class CharacterSheet with _$CharacterSheet {
  const factory CharacterSheet({
    required String id,
    required String characterName,
    required int level,
    @Default(<String, int>{}) Map<String, int> attributes,
  }) = _CharacterSheet;

  factory CharacterSheet.fromJson(Map<String, dynamic> json) =>
      _$CharacterSheetFromJson(json);
}
