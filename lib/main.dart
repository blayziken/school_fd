import 'package:flutter/material.dart';
import 'package:food_delivery/screens/chooseType.dart';
import 'package:food_delivery/screens/login_singup/sign_in.dart';
import 'package:food_delivery/screens/login_singup/signup.dart';
import 'package:food_delivery/screens/orders/x.dart';
//import 'package:food_delivery/screens/orders/orders.dart';
import 'package:food_delivery/screens/splashs/splash1.dart';
import 'package:food_delivery/screens/splashs/splash2.dart';
import 'package:food_delivery/screens/splashs/splash3.dart';

void main() {
  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food Delivery',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ChooseType(),
        routes: {
          SplashScreen1.routeName: (context) => SplashScreen1(),
          SplashScreen2.routeName: (context) => SplashScreen2(),
          SplashScreen3.routeName: (context) => SplashScreen3(),
          SignIn.routeName: (context) => SignIn(),
          SignUp.routeName: (context) => SignUp(),
          ChooseType.routeName: (context) => ChooseType(),
//
        });
  }
}
