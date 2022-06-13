import 'package:fitness_app_yoga/Utils/Dummycard.dart';
import 'package:flutter/material.dart';

class EventsPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        // elevation: 2,
        // shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
            buildCard(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}