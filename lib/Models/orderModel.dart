import 'package:flutter/foundation.dart';

class Order {
  final String id;
  final String name;
  final double totalPrice;
  final Map<String, Map<String, double>> items;

  Order({
    required this.id,
    required this.name,
    required this.totalPrice,
    required this.items,
  });
}
