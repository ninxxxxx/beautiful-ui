class User {
  final String name;
  final String type;
  final int hp;

  User(this.name, this.type, this.hp);

  User.fromJson(Map<String, Object> json)
      : name = json['name'],
        type = json['type'],
        hp = json['hp'];

  Map toJson() {
    return {
      'name': name,
      'type': type,
      'hp': hp,
    };
  }

  String toString() {
    return 'Name: $name\nType: $type\nHP: $hp';
  }
}
