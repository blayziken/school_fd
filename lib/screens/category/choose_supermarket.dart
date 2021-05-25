import 'package:flutter/material.dart';
import 'package:food_delivery/chooseTypeOrderPages/superMarket_order.dart';

import '../../chooseTypeOrderPages/restaurant_order.dart';

class ChooseSupermarket extends StatelessWidget {
  static const routeName = '/choose-supermarket';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Choose Supermarket'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: media.width,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // SEARCH FIELD
                  Container(
                    width: media.width * 0.65,
                    height: media.height * 0.064,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF3E4067),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search Restaurant",
                        hintStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ),

                  SizedBox(height: 35),
                  //LIST
                  Column(children: [
                    ChooseSuperMarketWidget(
                      superMarketName: 'YemYem',
                      superMarketLocation: 'New Hall',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 2',
                      superMarketLocation: 'New Hall',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 3',
                      superMarketLocation: 'New Hall',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 4',
                      superMarketLocation: 'Jaja Complex',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 5',
                      superMarketLocation: 'Jaja Complex',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 6',
                      superMarketLocation: 'Law',
                    ),
                    SizedBox(height: 20),
                    ChooseSuperMarketWidget(
                      superMarketName: 'Name 7',
                      superMarketLocation: 'Law',
                    ),
                    SizedBox(height: 20),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChooseSuperMarketWidget extends StatelessWidget {
  const ChooseSuperMarketWidget({
    Key key,
    this.superMarketName,
    this.superMarketLocation,
  }) : super(key: key);

  final String superMarketLocation;
  final String superMarketName;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        width: media.width * 0.85,
        height: media.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  superMarketName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[700],
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Location: $superMarketLocation',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuperMarketOrder(name: superMarketName),
          ),
        );
      },
    );
  }
}
