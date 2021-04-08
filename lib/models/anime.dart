class Anime {
  final String name;
  final String character;
  final String quote;

  Anime(this.name, this.character, this.quote);

  Anime.fromJson(Map<String, Object> json)
      : name = json['anime'],
        character = json['character'],
        quote = json['quote'];

  Map toJson() {
    return {
      'anime': name,
      'character': character,
      'quote': quote,
    };
  }

  String toString() {
    return 'Name: $name\nCharacter: $character\nQuote: $quote';
  }
}
