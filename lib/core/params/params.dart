// ignore_for_file: public_member_api_docs, sort_constructors_first
class NoParams {}

class TemplateParams {}

class PokemonParams {
  final String id;
  const PokemonParams({
    required this.id,
  });
}

class PokemonImageParams {
  final String name;
  final String imgUrl;

  PokemonImageParams({
    required this.name,
    required this.imgUrl,
  });
}
