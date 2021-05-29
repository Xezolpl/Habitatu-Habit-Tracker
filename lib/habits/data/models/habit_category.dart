import 'dart:convert';

import 'package:flutter/material.dart';

class HabitCategory {
  final String id;
  final String name;
  final Color color;

  const HabitCategory({
    required this.id,
    required this.name,
    required this.color,
  });

  HabitCategory copyWith({
    String? id,
    String? name,
    Color? color,
  }) {
    return HabitCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color.value,
    };
  }

  factory HabitCategory.fromMap(Map<String, dynamic> map) {
    return HabitCategory(
      id: map['id'],
      name: map['name'],
      color: Color(map['color']),
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitCategory.fromJson(String source) =>
      HabitCategory.fromMap(json.decode(source));

  @override
  String toString() => 'HabitCategory(id: $id, name: $name, color: $color)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HabitCategory &&
        other.id == id &&
        other.name == name &&
        other.color == color;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ color.hashCode;
}
