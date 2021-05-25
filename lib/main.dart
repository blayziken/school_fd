import 'package:flutter/material.dart';
import 'package:food_delivery/chooseTypeOrderPages/pharmacy_order.dart';
import 'package:food_delivery/chooseTypeOrderPages/stationery_order.dart';
import 'package:food_delivery/providers/orders.dart';
import 'package:food_delivery/screens/category/choose_restaurant.dart';
import 'package:food_delivery/screens/category/choose_supermarket.dart';
import 'package:food_delivery/screens/chooseType.dart';
import 'package:food_delivery/screens/login_singup/sign_in.dart';
import 'package:food_delivery/screens/login_singup/signup.dart';
import 'package:food_delivery/screens/orders/orderList.dart';
import 'package:food_delivery/screens/orders/ordersPage.dart';
import 'package:food_delivery/screens/orders/orders_screen.dart';
import 'package:food_delivery/screens/splashs/introduction.dart';
import 'package:food_delivery/screens/splashs/splash1.dart';
import 'package:food_delivery/screens/splashs/splash2.dart';
import 'package:food_delivery/screens/splashs/splash3.dart';
import 'package:food_delivery/screens/splashs/splash_screen.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/food_delivery/lib/widgets/MaterialDialog/materialDialog_icon_buttons.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Orders(),
      child: MaterialApp(
          title: 'Food Delivery',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
//          home: ChooseType(),
          home: SplashScreen(),
          routes: {
            ChooseType.routeName: (context) => ChooseType(),

            //Splash Screen Routes..
            SplashScreen.routeName: (context) => SplashScreen(),
            IntroductionSlide.routeName: (context) => IntroductionSlide(),
            SplashScreen1.routeName: (context) => SplashScreen1(),
            SplashScreen2.routeName: (context) => SplashScreen2(),
            SplashScreen3.routeName: (context) => SplashScreen3(),

            //Authentication Routes..
            SignIn.routeName: (context) => SignIn(),
            SignUp.routeName: (context) => SignUp(),

            //Orders Routes....
            OrderList.routeName: (context) => OrderList(),
//            OrdersPageX.routeName: (context) => OrdersPageX(),
            OrdersScreen.routeName: (context) => OrdersScreen(),

            //Choose Type Routes..
            ChooseRestaurant.routeName: (context) => ChooseRestaurant(),
            ChooseSupermarket.routeName: (context) => ChooseSupermarket(),
            StationeryOrder.routeName: (context) => StationeryOrder(),
            PharmacyOrder.routeName: (context) => PharmacyOrder(),
//
          }),
    );
  }
}
