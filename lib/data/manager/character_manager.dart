import 'package:flutter_example/domain/entities/character.dart';
import 'package:flutter_example/services/character_service_base.dart';

class CharacterManager {
  final CharacterServiceBase _characterService;

  CharacterManager(this._characterService);

  Future<List<Character>> getCharacters() async {
    try {
      return await _characterService.fetchCharacters();
    } catch (e) {
      rethrow;
    }
  }
}
