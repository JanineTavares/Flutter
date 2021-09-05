
class Pokemon {
  String? name;
  String? url;

  Pokemon({this.name, this.url});

  Pokemon.fromJson(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    url = map['url'] ?? '';
  }

  @override
  String toString() {
    return 'Pokemon{name: $name, url: $url}';
  }
}