import 'package:flutter_example/data/domain/entities/character.dart';
import 'package:flutter_example/data/dtos/character_dto.dart';

class CharacterMapper {
  static Character fromDto(CharacterDto dto) {
    return Character(name: dto.name);
  }
}
