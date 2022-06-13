import 'package:fitness_app_yoga/Utils/customHorizontailViewBuilder.dart';
import 'package:fitness_app_yoga/models/home_option_model.dart';
import 'package:flutter/material.dart';

class Homepages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Gym Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: gymCards),
              ),
              const Text(
                "Yoga Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: yogaCards),
              ),
              const Text(
                "Meditation Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: mediCards),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
