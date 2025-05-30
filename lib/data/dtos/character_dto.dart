class CharacterDto {
  final String name;

  CharacterDto({required this.name});

  factory CharacterDto.fromJson(Map<String, dynamic> json) {
    return CharacterDto(name: json['name']);
  }
}
