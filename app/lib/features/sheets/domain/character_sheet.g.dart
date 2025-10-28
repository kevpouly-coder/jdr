// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'character_sheet.dart';

_$CharacterSheetImpl _$$CharacterSheetImplFromJson(Map<String, dynamic> json) =>
    _$CharacterSheetImpl(
      id: json['id'] as String,
      characterName: json['characterName'] as String,
      level: json['level'] as int,
      attributes: (json['attributes'] as Map<String, dynamic>?)
              ?.map(
                (k, e) => MapEntry(k, e as int),
              ) ??
          const <String, int>{},
    );

Map<String, dynamic> _$$CharacterSheetImplToJson(
        _$CharacterSheetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'characterName': instance.characterName,
      'level': instance.level,
      'attributes': instance.attributes,
    };
