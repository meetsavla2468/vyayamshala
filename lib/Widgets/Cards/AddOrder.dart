import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Models/currentCart.dart';
import 'package:khana/Models/mealData.dart';

class OrderAdd extends StatefulWidget {
  OrderAdd({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<OrderAdd> createState() => _OrderAddState();
}

class _OrderAddState extends State<OrderAdd> {
  int _itemCount = 0;
  late final _item = {
    "id": mealsData[widget.index].id,
    "price": mealsData[widget.index].price,
    "quantity": _itemCount,
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: _itemCount == 0
          ? () {
              setState(() {
                _itemCount = 1;
              });
              Cart.addToCart(
                CartModel(
                  id: mealsData[widget.index].id,
                  price: mealsData[widget.index].price,
                  quantity: _itemCount as double,
                  totalPrice: _item["price"] as double,
                ),
              );
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Added item'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      _item["quantity"] = ((_item["quantity"] as double) - 1);
                      setState(
                        () {
                          _itemCount--;
                        },
                      );
                      _item["price"] =
                          ((_item["price"] as double) * _itemCount);
                      Cart.updateCart(
                        _item["id"] as String,
                        "Remove",
                      );
                    },
                  ),
                ),
              );
            }
          : null,
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.accentColor,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: _itemCount == 0
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "Add item",
                    style: GoogleFonts.aBeeZee(color: theme.accentColor),
                  ),
                ),
              )
            : Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _itemCount--;
                        },
                      );
                      _item["price"] =
                          ((mealsData[widget.index].price) * _itemCount);
                      _item["quantity"] = ((_item["quantity"] as double) - 1);
                      Cart.updateCart(
                        _item["id"] as String,
                        "Remove",
                      );
                    },
                    icon: Icon(
                      Icons.plus_one,
                      color: theme.accentColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    color: theme.accentColor,
                    child: Text(
                      _itemCount.toString(),
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Added item'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              _item["quantity"] =
                                  ((_item["quantity"] as double) - 1);
                              setState(
                                () {
                                  _itemCount--;
                                },
                              );
                              _item["price"] =
                                  ((mealsData[widget.index].price) *
                                      _itemCount);
                              Cart.updateCart(
                                _item["id"] as String,
                                "Remove",
                              );
                            },
                          ),
                        ),
                      );
                      setState(
                        () {
                          _itemCount++;
                        },
                      );
                      _item["price"] =
                          ((mealsData[widget.index].price) * _itemCount);
                      _item["quantity"] = ((_item["quantity"] as double) + 1);
                      Cart.updateCart(
                        _item["id"] as String,
                        "Add",
                      );
                    },
                    icon: Icon(
                      Icons.plus_one,
                      color: theme.accentColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
