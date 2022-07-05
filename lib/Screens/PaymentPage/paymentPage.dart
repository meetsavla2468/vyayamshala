import 'package:flutter/material.dart';
import 'package:khana/Utils/Routes/routes.dart';
import 'package:khana/Widgets/Appbar/homeAppBar.dart';
import 'package:khana/Widgets/Button/CustomPayButton.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
      ),
      body: Center(
        child: CustomPaymentButton(
          func: () {
            Navigator.of(context).pushNamed(RouteManager.paymentConfirmation);
          },
          text: "Pay",
        ),
      ),
    );
  }
}
