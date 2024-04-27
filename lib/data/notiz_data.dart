import 'dart:convert';

import 'package:flutter/material.dart';

class Notiz {
  String text;
  String title;

  Color color;
  Notiz(
    this.text,
    this.title,
    this.color,
  );

  Notiz copyWith({
    String? title,
    String? text,
    Color? color,
  }) {
    return Notiz(
      title ?? this.title,
      text ?? this.text,
      color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'text': text,
      'color': color.value,
    };
  }

  factory Notiz.fromMap(Map<String, dynamic> map) {
    return Notiz(
      map['title'] as String,
      map['text'] as String,
      Color(map['color'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Notiz.fromJson(String source) =>
      Notiz.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Notiz(title: $title, text: $text, color: $color)';

  @override
  bool operator ==(covariant Notiz other) {
    if (identical(this, other)) return true;

    return other.title == title && other.text == text && other.color == color;
  }

  @override
  int get hashCode => title.hashCode ^ text.hashCode ^ color.hashCode;
}
