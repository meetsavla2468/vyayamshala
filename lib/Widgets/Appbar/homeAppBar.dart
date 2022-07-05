import 'package:flutter/material.dart';
import 'package:khana/Utils/Routes/routes.dart';

PreferredSize CustomAppBar(BuildContext ctx, bool showBack, bool showCart) {
  final theme = Theme.of(ctx);
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: AppBar(
      backgroundColor: theme.primaryColor,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(ctx).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: theme.primaryColorDark,
          size: 32,
        ),
      ),
      title: const Icon(
        Icons.person,
        size: 32,
        color: Colors.black,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(ctx).pushNamed(RouteManager.checkout);
          },
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.shopping_cart_outlined,
              color: theme.accentColor,
              size: 25,
            ),
          ),
        ),
        const SizedBox(
          width: 25,
        ),
      ],
    ),
  );
}
