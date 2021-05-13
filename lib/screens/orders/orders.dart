//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class OrdersPage extends StatelessWidget {
//  static const routeName = '/orders-page';
//
//  @override
//  Widget build(BuildContext context) {
//    var size = MediaQuery.of(context).size;
//
//    return Scaffold(
////      backgroundColor: Colors.green,
//      appBar: AppBar(
//        backgroundColor: Colors.black,
//        title: Text('Order Details'),
//        leading: IconButton(
//          icon: Icon(
//            Icons.arrow_back,
//            color: Colors.white,
//          ),
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
//      ),
//      body: SafeArea(
//        child: Container(
//          width: size.width,
//          height: size.height,
//          color: Colors.grey,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              SizedBox(height: 10),
//              Text(
//                'Date & Time',
//                style: TextStyle(
//                  fontSize: 17,
//                ),
//              ),
//              SizedBox(height: 10),
//              Container(
//                height: size.height * 0.19,
//                width: size.width * 0.9,
//                decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.circular(15),
//                ),
//                child: Padding(
//                  padding: EdgeInsets.only(top: 10.0, left: 15),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      Text(
//                        'Order Added: Your Order is on the way',
//                        style: TextStyle(
////                          fontWeight: FontWeight.bold,
//                          fontSize: 18,
//                        ),
//                      ),
//                      SizedBox(height: 5),
//                      InkWell(
//                        child: Text(
//                          'Your order has been added, click for details.',
//                          style: TextStyle(
////                          fontWeight: FontWeight.bold,
//                            fontSize: 13,
//                          ),
//                        ),
//                        onTap: () {
//                          print('A');
//                        },
//                      ),
//                      Padding(
//                        padding:
//                            EdgeInsets.only(top: 13.0, bottom: 10, right: 10),
//                        child: Row(
//                          children: [
//                            Container(
//                              width: size.width * 0.18,
//                              height: size.height * 0.092,
//                              decoration: BoxDecoration(
//                                  color: Colors.white,
//                                  image: DecorationImage(
//                                    image: AssetImage('images/image.png'),
//                                    fit: BoxFit.cover,
//                                  )),
//                            ),
//                            SizedBox(width: 13),
//                            Container(
//                              width: size.width * 0.6,
//                              height: size.height * 0.092,
//                              color: Colors.grey,
//                              child: Padding(
//                                padding: EdgeInsets.all(10.0),
//                                child: Column(
//                                  mainAxisAlignment:
//                                      MainAxisAlignment.spaceBetween,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      'Delivery Time: 15 mins',
//                                      style: TextStyle(fontSize: 16),
//                                    ),
//                                    Text(
//                                      'Total: N302.0',
//                                      style: TextStyle(fontSize: 16),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            )
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
