import 'package:flutter/material.dart';
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
                  children: [
//                    for (final type in types)
//                      ChooseTypeWidget(
//                          typeName: type.name,
//                          typeDescription: type.description,
//                          typeImage: type.imagePath,
//                          onTap: (context) {
//                            Navigator.pushNamed(context, type.routePath);
//                          }),

                    ChooseTypeWidget(
                      typeName: 'Restaurants',
                      typeDescription:
                          'All the food you love, from restaurants near you',
                      typeImage: 'images/image.png',
                      onTap: () {
                        Navigator.pushNamed(context, '/choose-restaurant');
                      },
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Supermarket',
                      typeDescription:
                          'Fresh groceries and everyday essentials',
                      typeImage: 'images/image.png',
                      onTap: () {
                        Navigator.pushNamed(context, '/choose-supermarket');
                      },
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Stationery',
                      typeDescription: 'Gifts, electronics, airtime & more',
                      typeImage: 'images/image.png',
                      onTap: () {
                        Navigator.pushNamed(context, '/stationery-order');
                      },
                    ),
                    SizedBox(height: 25),
                    ChooseTypeWidget(
                      typeName: 'Pharmarcy',
                      typeDescription: 'Medication and personal care',
                      typeImage: 'images/image.png',
                      onTap: () {
                        Navigator.pushNamed(context, '/pharmacy-order');
                      },
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

//class Type {
//  final String name;
//  final String description;
//  final String imagePath;
//  final String routePath;
//
//  Type(this.name, this.description, this.imagePath, this.routePath);
//}
//
//final types = [
//  Type('Restaurants', 'All the food you love, from restaurants near you',
//      'images/image.png', '/choose-restaurant'),
//  Type('Supermarket', 'Fresh groceries and everyday essentials',
//      'images/image.png', '/choose-supermarket'),
//  Type('Stationery', 'Gifts, electronics, airtime & more', 'images/image.png',
//      '/stationery-order'),
//  Type('Pharmarcy', 'Medication and personal care', 'images/image.png',
//      '/pharmacy-order'),
//  Type('Party', 'Alcoholic drinks and more to get your party started',
//      'images/image.png', ''),
//];
