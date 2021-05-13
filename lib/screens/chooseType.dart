import 'package:flutter/material.dart';
import 'package:food_delivery/screens/category/choose_restaurant.dart';
import 'package:food_delivery/screens/restaurant_order.dart';
import 'package:food_delivery/screens/set_location.dart';
import 'package:food_delivery/widgets/choose_types_widget.dart';

class ChooseType extends StatelessWidget {
  static const routeName = '/choose-type';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: media.height,
          width: media.width,
//        color: Colors.brown,
          child: Column(
            children: [
              Container(
                width: media.width,
                color: Colors.orange[700],
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Where????',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: media.height * 0.04,
              ),
              Expanded(
                child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChooseTypeWidget(
                      typeName: 'Restaurants',
                      typeDescription:
                          'All the food you love, from restaurants near you',
                      typeImage: 'images/image.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseRestaurant(

//                              name: typeName,
                                ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Supermarket',
                      typeDescription:
                          'Fresh groceries and everyday essentials',
                      typeImage: 'images/image.png',
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Shopping',
                      typeDescription: 'Gifts, electronics, airtime & more',
                      typeImage: 'images/image.png',
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Pharmarcy',
                      typeDescription: 'Medication and personal care',
                      typeImage: 'images/image.png',
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Party',
                      typeDescription:
                          'Alcoholic drinks and more to get your party started',
                      typeImage: 'images/image.png',
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
