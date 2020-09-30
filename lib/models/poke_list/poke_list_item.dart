import 'dart:convert';

class PokeListItem {
  String name;
  String url;
  PokeListItem({
    this.name,
    this.url,
  });

  PokeListItem copyWith({
    String name,
    String url,
  }) {
    return PokeListItem(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory PokeListItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PokeListItem(
      name: map['name'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeListItem.fromJson(String source) =>
      PokeListItem.fromMap(json.decode(source));

  @override
  String toString() => 'PokeListItem(name: $name, url: $url)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PokeListItem && o.name == name && o.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
