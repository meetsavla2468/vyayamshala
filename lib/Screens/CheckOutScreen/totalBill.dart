import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Models/currentCart.dart';
import 'package:khana/Utils/Routes/routes.dart';
import 'package:khana/Widgets/Button/CustomPayButton.dart';

class TotalBilling extends StatefulWidget {
  const TotalBilling(
      {Key? key})
      : super(key: key);

  @override
  State<TotalBilling> createState() => _TotalBillingState();
}

class _TotalBillingState extends State<TotalBilling> {
  @override
  Widget build(BuildContext context) {
    final itemCount = Cart.totalQuantity();
    final totalPrice = Cart.totalPricing();

    final theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Text(
                "Total",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: theme.textSelectionColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              child: Text(
                "($itemCount items)",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: theme.primaryColorDark,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 8,
              ),
              child: Text(
                "Rs $totalPrice",
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: theme.textSelectionColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        CustomPaymentButton(
          text: "Pay Rs $totalPrice",
          func: (){
            Navigator.of(context).pushNamed(RouteManager.payment);
          },
        ),
      ],
    );
  }
}
