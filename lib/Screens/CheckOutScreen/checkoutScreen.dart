import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Models/currentCart.dart';
import 'package:khana/Models/mealData.dart';
import 'package:khana/Screens/CheckOutScreen/totalBill.dart';
import 'package:khana/Widgets/Appbar/homeAppBar.dart';
import 'package:khana/Widgets/Cards/checkoutCard.dart';
import 'package:khana/Widgets/Textfield/deliveryForm.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> _cart = Cart.getItem;
    // print(_cart);
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
      ),
      backgroundColor: theme.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  "Orders",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black26,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return CheckoutMealCard(
                    title: mealsData
                        .firstWhere(
                            (element) => element.id == _cart[index].id)
                        .name,
                    imageURL: mealsData
                        .firstWhere(
                            (element) => element.id == _cart[index].id)
                        .imageURL,
                    price: _cart[index].price,
                    quantity: _cart[index].quantity,
                    index: index,
                  );
                  return Container();
                },
                itemCount: _cart.length,
                scrollDirection: Axis.vertical,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      "Delivery To",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: theme.accentColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Text(
                      "Edit",
                      style: GoogleFonts.poppins(
                        color: theme.accentColor,
                      ),
                    ),
                  ),
                ],
              ),
              const DeliveryForm(),
              const TotalBilling(

              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
