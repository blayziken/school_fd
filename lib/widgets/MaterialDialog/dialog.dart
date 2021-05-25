import 'package:flutter/material.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/food_delivery/lib/chooseTypeOrderPages/restaurant_order.dart';
import 'materialDialog_icon_buttons.dart';
import 'material_dialogs.dart';

Future<void> materialDialog(context, restaurantName) {
  return Dialogs.materialDialog(
      msg: 'Your order has been placed',
      title: "ORDER ADDED!",
      color: Colors.white,
      context: context,
      actions: [
        IconsOutlineButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/orders-screen');
          },
          text: 'Check Orders',
          iconData: Icons.view_list,
          color: Colors.red,
          textStyle: TextStyle(color: Colors.white),
          iconColor: Colors.white,
        ),
        IconsButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantOrder(name: restaurantName),
              ),
            );
          },
          text: "New Order",
          iconData: Icons.add,
          color: Colors.red,
          textStyle: TextStyle(color: Colors.white),
          iconColor: Colors.white,
        ),
      ]);
}
