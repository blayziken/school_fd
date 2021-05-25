//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:food_delivery/providers/orders.dart';
//import 'package:food_delivery/screens/orders/orderDetail.dart';
//import 'package:provider/provider.dart';
//
//class OrdersPageX extends StatelessWidget {
//  static const routeName = '/ordersX-page';
//
//  OrdersPageX({
//    this.totalAmountOfOrder,
//    this.order,
//    this.address,
//    this.restaurantName,
//    this.date,
//    this.phoneNumber,
//  });
//
//  int totalAmountOfOrder;
//  List order;
//  String address;
//  String phoneNumber;
//  String restaurantName;
//  final DateTime date;
//
//  @override
//  Widget build(BuildContext context) {
//    var size = MediaQuery.of(context).size;
//    final orders = Provider.of<Orders>(context);
//
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.black,
//        title: Text('Orders'),
//      ),
//      body: SingleChildScrollView(
//        child: SafeArea(
//          child: Container(
//            width: size.width,
//            height: size.height,
//            color: Colors.grey[300],
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//                SizedBox(height: 10),
//                Text(
//                  '$date',
//                  style: TextStyle(
//                    fontSize: 17,
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  height: size.height * 0.19,
//                  width: size.width * 0.9,
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(15),
//                    boxShadow: [
//                      BoxShadow(
//                        color: Colors.grey.withOpacity(0.6),
//                        offset: Offset(0, 3),
//                        blurRadius: 7,
//                        spreadRadius: 5,
//                      )
//                    ],
//                  ),
//                  child: Padding(
//                    padding: EdgeInsets.only(top: 10.0, left: 15),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text(
//                          'Order Added! Your Order is on the way',
//                          style: TextStyle(
////                          fontWeight: FontWeight.bold,
//                            fontSize: 18,
//                          ),
//                        ),
//                        SizedBox(height: 5),
//                        InkWell(
//                          child: Text(
//                            'Your order has been added, click for details.',
//                            style: TextStyle(
////                          fontWeight: FontWeight.bold,
//                              fontSize: 13,
//                            ),
//                          ),
//                          onTap: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                builder: (context) => OrderDetail(
//                                  date: date,
//                                  subTotal: totalAmountOfOrder,
//                                  order: order,
//                                  address: address,
//                                  phoneNumber: phoneNumber,
//                                  shopName: restaurantName,
//                                ),
//                              ),
//                            );
//                          },
//                        ),
//                        Padding(
//                          padding:
//                              EdgeInsets.only(top: 13.0, bottom: 10, right: 10),
//                          child: Row(
//                            children: [
//                              Container(
//                                width: size.width * 0.18,
//                                height: size.height * 0.092,
//                                decoration: BoxDecoration(
//                                    color: Colors.white,
//                                    image: DecorationImage(
//                                      image: AssetImage('images/image.png'),
//                                      fit: BoxFit.cover,
//                                    )),
//                              ),
//                              SizedBox(width: 13),
//                              Container(
//                                width: size.width * 0.6,
//                                height: size.height * 0.092,
//                                color: Colors.grey.withOpacity(0.5),
//                                child: Padding(
//                                  padding: EdgeInsets.all(10.0),
//                                  child: Column(
//                                    mainAxisAlignment:
//                                        MainAxisAlignment.spaceBetween,
//                                    crossAxisAlignment:
//                                        CrossAxisAlignment.start,
//                                    children: [
//                                      Text(
//                                        'Delivery Time: 15 mins',
//                                        style: TextStyle(fontSize: 16),
//                                      ),
//                                      Text(
//                                        'Total: N$totalAmountOfOrder',
//                                        style: TextStyle(fontSize: 16),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              )
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
