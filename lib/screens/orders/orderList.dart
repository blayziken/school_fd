import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  static const routeName = '/order-list';

  OrderList({this.order});

  final List order;

  @override
  Widget build(BuildContext context) {
    Widget fullList() {
      List<Widget> foodList = [];
      for (var i = 0; i < order.length; i++) {
        for (var j = 0; j < order[i].length; j++) {
//          print('${order[i][j]}');

          foodList.add(
            Container(
                width: 250,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${order[i][j]}', style: TextStyle(fontSize: 20)),
                        Text('${order[i][++j]}',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                )),
          );
        }
      }
      print(order);
      print(foodList);
      return Column(children: foodList);
    }

    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Order List'),
      ),
      body: SafeArea(
        child: Container(
          width: media.width,
          height: media.height,
//          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 400,
                    width: 350,
                    child: fullList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
