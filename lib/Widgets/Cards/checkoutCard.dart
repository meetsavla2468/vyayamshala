import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Widgets/Cards/AddOrder.dart';

class CheckoutMealCard extends StatefulWidget {
  const CheckoutMealCard({
    Key? key,
    required this.index,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imageURL,
  }) : super(key: key);
  final int index;

  final String title;
  final double price;
  final int quantity;
  final String imageURL;

  @override
  State<CheckoutMealCard> createState() => _CheckoutMealCardState();
}

class _CheckoutMealCardState extends State<CheckoutMealCard> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return SizedBox(
      height: media.size.height * 0.3,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: media.size.width * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.imageURL),
                fit: BoxFit.fill,
              ),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          SizedBox(
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color: theme.textSelectionColor,
                  ),
                ),
                Text(
                  "Price: \$${widget.price.toString()}",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: theme.textSelectionColor,
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  "${widget.quantity.toString()}x",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: theme.textSelectionColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OrderAdd(
                  index: widget.index,
                ),
                const Spacer(
                  flex: 4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
