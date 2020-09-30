import 'dart:convert';

import 'package:EveryPoke/preferences.dart';
import 'package:flutter/material.dart';

class Theme {
  String icon;
  Color color;
  Theme({
    this.icon = 'images/pokeball.png',
    this.color = mainColor,
  });

  Theme copyWith({
    String icon,
    Color color,
  }) {
    return Theme(
      icon: icon ?? this.icon,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'icon': icon,
      'color': color?.value,
    };
  }

  factory Theme.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Theme(
      icon: map['icon'],
      color: Color(map['color']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Theme.fromJson(String source) => Theme.fromMap(json.decode(source));

  @override
  String toString() => 'Theme(icon: $icon, color: $color)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Theme && o.icon == icon && o.color == color;
  }

  @override
  int get hashCode => icon.hashCode ^ color.hashCode;
}
