import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:khana/Utils/Routes/Routes.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  splashRedirect() {
    Timer(
      const Duration(seconds: 2),
          () async {
        Navigator.of(context).popAndPushNamed(RouteManager.home);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    splashRedirect();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: media.size.height * 0.5,
              width: media.size.width * 0.75,
              child: SvgPicture.asset("assets/SVG/splashScreen.svg"),
            ),
            Text(
              "Khana",
              style: GoogleFonts.signika(
                color: Colors.brown[800],
                fontSize: 32,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
