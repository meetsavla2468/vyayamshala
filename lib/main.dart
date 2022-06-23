import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:khana/Utils/Routes/routes.dart';
import 'package:khana/Utils/Theme/themes.dart';

// Google Map Android API KEY : AIzaSyBDOQhPLuLjBqApiGu71iXoooyrGJzVNZ8

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // Enforces the device orientation to portrait
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    // Hides the bottom navbar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);

    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.home,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
