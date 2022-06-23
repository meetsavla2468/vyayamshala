import 'package:flutter/material.dart';
import 'package:khana/Screens/CheckOutScreen/checkoutScreen.dart';
import 'package:khana/Screens/HomeScreen/homeScreen.dart';
import 'package:khana/Screens/MealScreen/MealScreen.dart';
import 'package:khana/Screens/PaymentComplete/paymentDone.dart';
import 'package:khana/Screens/PaymentPage/paymentPage.dart';
import 'package:khana/Screens/SplashScreen/splashScreen.dart';

class RouteManager {

  // Routes
  static const String splash = '/splash-screen';
  static const String home = '/';
  static const String meal = '/meals';
  static const String checkout = '/check-out';
  static const String payment = '/payment';
  static const String paymentConfirmation = '/payment-confirmation';


  static Route<dynamic> generateRoute(RouteSettings settings){

    //Arguments
    var args;
    if(settings.arguments != null){
      args = settings.arguments as Map<String, dynamic>;
    }

    // Route Switching
    switch(settings.name){
      case splash:
        return MaterialPageRoute(builder: (ctx) => const CustomSplashScreen() );

      case home:
        return MaterialPageRoute(builder: (ctx) => const HomeScreen() );

      case meal:
        return MaterialPageRoute(builder: (ctx) => const MealScreen() );

      case checkout:
        return MaterialPageRoute(builder: (ctx) => const CheckoutScreen() );

      case payment:
        return MaterialPageRoute(builder: (ctx) => const PaymentScreen() );

      case paymentConfirmation:
        return MaterialPageRoute(builder: (ctx) => const PaymentDoneScreen() );


      default:
        throw const FormatException("Invalid Route");
    }

  }
}
