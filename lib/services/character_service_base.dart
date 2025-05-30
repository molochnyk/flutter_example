import 'package:flutter_example/domain/entities/character.dart';

abstract class CharacterServiceBase {
  Future<List<Character>> fetchCharacters();
}
