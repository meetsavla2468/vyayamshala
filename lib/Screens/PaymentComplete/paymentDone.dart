import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khana/Utils/Routes/routes.dart';
import 'package:khana/Widgets/Appbar/homeAppBar.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () async {
        Navigator.of(context).popAndPushNamed(RouteManager.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SizedBox(
        width: media.size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 80,
              ),
              Icon(
                Icons.person,
                size: 120,
                color: theme.primaryColorDark,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      "Payment Completed!!!",
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: theme.accentColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  "Track your order",
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: theme.textSelectionColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: theme.primaryColor,
    );
  }
}
