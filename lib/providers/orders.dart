import 'package:flutter/foundation.dart';

class OrderItem {
  final String id;
  final int amount;
  final List order;
  final String address;
  final String phoneNumber;
  final String shopName;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.phoneNumber,
    @required this.order,
    @required this.shopName,
    @required this.address,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(int amount, String orderAddress, List foodOrder,
      String phoneNumber, String shopName) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: amount,
        address: orderAddress,
        order: foodOrder,
        phoneNumber: phoneNumber,
        shopName: shopName,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
