import 'package:flutter/foundation.dart';

class CartModel {
  final String id;
  final double price;
  int quantity;
  double totalPrice;

  set setQuantity(int quantity) {
    this.quantity = quantity;
  }

  set setTotalPrice(double totalPrice) {
    this.totalPrice = totalPrice;
  }

  CartModel({
    required this.id,
    required this.price,
    required this.quantity,
    this.totalPrice = 0,
  }) {
    totalPrice = price * quantity;
  }
}

class Cart {
  static final List<CartModel> _items = [];

  static List get getItem {
    return [..._items];
  }

  static void addToCart(CartModel item) {
    _items.add(item);
  }

  static void removeFromCart(CartModel item){
    _items.remove(item);
  }

  static double totalPricing() {
    double price = 0;
    for(int i = 0; i < _items.length; ++i){
      price += _items[i].totalPrice;
    }
    return price;
  }

  static int totalQuantity() {
    int quantity = 0;
    for(int i = 0; i < _items.length; ++i){
      quantity += _items[i].quantity;
    }
    return quantity;
  }

  static void updateCart(String id, String action) {
    final CartModel item = _items.firstWhere((item) => item.id == id);
    if (action == "Add") {
      item.totalPrice += item.price;
      item.quantity++;
    } else if (action == "Remove" && item.quantity != 1) {
      item.totalPrice -= item.price;
      --item.quantity;
      print(item.quantity);
    } else if (action == "Remove"){
      removeFromCart(item);
    }
  }
}
