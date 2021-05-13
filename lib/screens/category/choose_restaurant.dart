import 'package:flutter/material.dart';
import 'package:food_delivery/screens/restaurant_order.dart';

class ChooseRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Choose Restaurant'),
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
//          color: Colors.red,
            width: media.width,
//            height: media.height,
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
                  Column(
                    children: [
                      ChooseRestaurantWidget(
                        restaurantName: 'Mavise',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Blessed',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Shop 10',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Calabar Kitchen',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Shop 6',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Name 1',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Name 2',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Name 3',
                        restaurantLocation: 'Red Blocks',
                      ),
                      SizedBox(height: 20),
                      ChooseRestaurantWidget(
                        restaurantName: 'Name 4',
                        restaurantLocation: 'Red Blocks',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChooseRestaurantWidget extends StatelessWidget {
  const ChooseRestaurantWidget({
    Key key,
    this.restaurantName,
    this.restaurantLocation,
  }) : super(key: key);

  final String restaurantLocation;
  final String restaurantName;

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
                  restaurantName,
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
                  'Location: $restaurantLocation',
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
            builder: (context) => RestaurantOrder(name: restaurantName),
          ),
        );
      },
    );
  }
}
