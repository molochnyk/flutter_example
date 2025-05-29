import "package:flutter_example/core/network/request_service.dart";
import "package:flutter_example/services/character_service_base.dart";
import "package:flutter_example/data/mappers/character_mapper.dart";
import "package:flutter_example/domain/entities/character.dart";
import "package:flutter_example/constants/api_constants.dart";
import "package:flutter_example/data/dtos/character_dto.dart";

class CharacterService implements CharacterServiceBase {
  final RequestService _requestService;

  CharacterService(this._requestService);

  @override
  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await _requestService.sendAsync(
        method: HttpMethod.get,
        url: ApiConstants.getPeople,
      );

      final results = response as List<dynamic>;

      final dtos = results.map((itm) => CharacterDto.fromJson(itm));

      final characters = dtos
          .map((dto) => CharacterMapper.fromDto(dto))
          .toList();

      return characters;
    } catch (e) {
      throw Exception("Failed to fetch characters: $e");
    }
  }
}
