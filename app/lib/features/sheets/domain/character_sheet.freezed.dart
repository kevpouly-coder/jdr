// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
part of 'character_sheet.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterSheet _$CharacterSheetFromJson(Map<String, dynamic> json) {
  return _CharacterSheet.fromJson(json);
}

/// @nodoc
mixin _$CharacterSheet {
  String get id => throw _privateConstructorUsedError;
  String get characterName => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  Map<String, int> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterSheetCopyWith<CharacterSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterSheetCopyWith<$Res> {
  factory $CharacterSheetCopyWith(
          CharacterSheet value, $Res Function(CharacterSheet) then) =
      _$CharacterSheetCopyWithImpl<$Res, CharacterSheet>;
  $Res call({String id, String characterName, int level, Map<String, int> attributes});
}

/// @nodoc
class _$CharacterSheetCopyWithImpl<$Res, $Val extends CharacterSheet>
    implements $CharacterSheetCopyWith<$Res> {
  _$CharacterSheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characterName = null,
    Object? level = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterSheetImplCopyWith<$Res>
    implements $CharacterSheetCopyWith<$Res> {
  factory _$$CharacterSheetImplCopyWith(
          _$CharacterSheetImpl value, $Res Function(_$CharacterSheetImpl) then) =
      __$$CharacterSheetImplCopyWithImpl<$Res>;
  @override
  $Res call({String id, String characterName, int level, Map<String, int> attributes});
}

/// @nodoc
class __$$CharacterSheetImplCopyWithImpl<$Res>
    extends _$CharacterSheetCopyWithImpl<$Res, _$CharacterSheetImpl>
    implements _$$CharacterSheetImplCopyWith<$Res> {
  __$$CharacterSheetImplCopyWithImpl(
      _$CharacterSheetImpl _value, $Res Function(_$CharacterSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characterName = null,
    Object? level = null,
    Object? attributes = null,
  }) {
    return _then(_$CharacterSheetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterSheetImpl implements _CharacterSheet {
  const _$CharacterSheetImpl(
      {required this.id,
      required this.characterName,
      required this.level,
      final Map<String, int> attributes = const <String, int>{}})
      : _attributes = attributes;

  factory _$CharacterSheetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterSheetImplFromJson(json);

  @override
  final String id;
  @override
  final String characterName;
  @override
  final int level;
  final Map<String, int> _attributes;
  @override
  @JsonKey()
  Map<String, int> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  String toString() {
    return 'CharacterSheet(id: $id, characterName: $characterName, level: $level, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterSheetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, characterName, level,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterSheetImplCopyWith<_$CharacterSheetImpl> get copyWith =>
      __$$CharacterSheetImplCopyWithImpl<_$CharacterSheetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterSheetImplToJson(
      this,
    );
  }
}

abstract class _CharacterSheet implements CharacterSheet {
  const factory _CharacterSheet(
      {required final String id,
      required final String characterName,
      required final int level,
      final Map<String, int> attributes}) = _$CharacterSheetImpl;

  factory _CharacterSheet.fromJson(Map<String, dynamic> json) =
      _$CharacterSheetImpl.fromJson;

  @override
  String get id;
  @override
  String get characterName;
  @override
  int get level;
  @override
  Map<String, int> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CharacterSheetImplCopyWith<_$CharacterSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
