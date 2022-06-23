import 'package:flutter/material.dart';
import 'package:khana/Models/mealData.dart';
import 'package:khana/Widgets/Cards/mealCard.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({
    Key? key,
    required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: media.size.height * 0.8,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return MealCard(
            index: index,
            desc: mealsData[index].desc,
            imageURL: mealsData[index].imageURL,
            name: mealsData[index].name,
            price: mealsData[index].price,
            time: mealsData[index].time,
          );
        },
        itemCount: mealsData.length,
      ),
    );
  }
}
