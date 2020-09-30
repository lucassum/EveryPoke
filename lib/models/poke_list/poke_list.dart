import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:EveryPoke/models/poke_list/poke_list_item.dart';

class PokeList {
  int count;
  String next;
  String previous;
  List<PokeListItem> results;
  PokeList({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  PokeList copyWith({
    int count,
    String next,
    String previous,
    List<PokeListItem> results,
  }) {
    return PokeList(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory PokeList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PokeList(
      count: map['count'],
      next: map['next'],
      previous: map['previous'],
      results: List<PokeListItem>.from(
          map['results']?.map((x) => PokeListItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeList.fromJson(String source) =>
      PokeList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokeList(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PokeList &&
        o.count == count &&
        o.next == next &&
        o.previous == previous &&
        listEquals(o.results, results);
  }

  @override
  int get hashCode {
    return count.hashCode ^
        next.hashCode ^
        previous.hashCode ^
        results.hashCode;
  }
}
