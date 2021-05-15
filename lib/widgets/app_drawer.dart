import 'package:flutter/material.dart';
import 'package:food_delivery/screens/chooseType.dart';
import 'package:food_delivery/screens/orders/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ChooseType.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
//          Spacer(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Sign out', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
