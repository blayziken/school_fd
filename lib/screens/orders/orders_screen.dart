import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_drawer.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery/providers/orders.dart' show Orders;
import 'package:food_delivery/widgets/order_item.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = '/orders-screen';

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('Order Details'),
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (context, index) => OrderItem(orderData.orders[index]),
        ));
  }
}
