import 'package:flutter/foundation.dart';

class Meals {
  final String id;
  final String name;
  final String desc;
  final String imageURL;
  final double price;
  final String time;
  final Map<String, String> ingredients;

  final bool isLactoseFree;
  final bool isFatFree;
  final bool isVegan;

  Meals({
    required this.id,
    required this.name,
    required this.desc,
    required this.imageURL,
    required this.price,
    required this.ingredients,
    required this.isLactoseFree,
    required this.isFatFree,
    required this.isVegan,
    required this.time,
  });
}
