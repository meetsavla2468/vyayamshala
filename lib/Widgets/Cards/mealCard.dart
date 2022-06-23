import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Models/mealData.dart';
import 'package:khana/Models/orderModel.dart';
import 'package:khana/Widgets/Cards/AddOrder.dart';

class MealCard extends StatelessWidget {
  MealCard({
    Key? key,
    required this.index,
    required this.name,
    required this.desc,
    required this.imageURL,
    required this.price,
    required this.time,
  }) : super(key: key);

  final int index;
  final String name;
  final String desc;
  final String imageURL;
  final double price;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final media = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 2,
        color: Colors.grey[100],
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: media.size.width * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      mealsData[index].imageURL,
                    ),
                    fit: BoxFit.fill,
                  ),
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
                    Text(
                      mealsData[index].name,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: theme.textSelectionColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Text(
                      "Starting price: \$${mealsData[index].price.toString()}",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: theme.textSelectionColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      mealsData[index].desc,
                      style: GoogleFonts.abel(
                        fontWeight: FontWeight.w100,
                        fontSize: 14,
                        color: theme.textSelectionColor,
                      ),
                    ),
                    Text(
                      "Time : ${mealsData[index].time}",
                      style: GoogleFonts.abel(
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                        color: theme.textSelectionColor,
                      ),
                    ),
                    Text(
                      "Rs. ${mealsData[index].price}",
                      style: GoogleFonts.abel(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: theme.textSelectionColor,
                      ),
                    ),
                    OrderAdd(
                      index: index,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
