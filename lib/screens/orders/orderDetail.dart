import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/orders/orderList.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail(
      {this.shopName,
      this.subTotal,
      this.order,
      this.address,
      this.date,
      this.phoneNumber});

  final String shopName;
  final int subTotal;
  final List order;
  final String address;
  final String phoneNumber;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final int orderTotal = subTotal + 200;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Order Details'),
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/choose-type');
          },
        ),
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status: Added',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Order ID: dfdfdfdfdf',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Order Date & Time: $date',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.grey,
                height: 100,
                width: size.width * 0.9,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address: \n$address',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Phone Number: \n$phoneNumber',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Center(
                    child: Text(
                      'Seller: $shopName',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quantity',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'x1',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'N$subTotal',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              'N200',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order total',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'N$orderTotal',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 60),
              Center(
                child: InkWell(
                  child: Text(
                    'See your order list here...',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17),
                  ),
                  onTap: () {
                    print(order);

                    for (var i = 0; i < order.length; i++) {
                      for (var j = 0; j < order[i].length; j++) {
                        print('${order[i][j]}');
                      }
                    }

//                    Navigator.pushNamed(context, '/order-list');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderList(
                          order: order,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Center(
                child: Container(
                  width: size.width * 0.8,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.red,
                    splashColor: Colors.black,
                    child: Center(
                      child: Text(
                        'CONFIRM ORDER RECEIVED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      print(order);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      )),
    );
  }
}
