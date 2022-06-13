import 'package:fitness_app_yoga/Utils/Dummycard.dart';
import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}