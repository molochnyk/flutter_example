import 'package:dio/dio.dart';

import '../data/dtos/character_dto.dart';
import '../data/mappers/character_mapper.dart';
import '../domain/entities/character.dart';

class CharacterService {
  final Dio _dio;

  CharacterService({Dio? dio})
    : _dio = dio ?? Dio(BaseOptions(baseUrl: "https://swapi.info/api"));

  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await _dio.get("/people/");

      final results = response.data as List<dynamic>;

      final dtos = results.map((itm) => CharacterDto.fromJson(itm));

      final characters = dtos
          .map((dto) => CharacterMapper.fromDto(dto))
          .toList();

      return characters;
    } on DioException catch (e) {
      throw Exception("Dio error: ${e.message}");
    } catch (e) {
      throw Exception('Unknown error: $e');
    }
  }
}
