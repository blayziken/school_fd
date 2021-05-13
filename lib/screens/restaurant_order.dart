import 'package:flutter/material.dart';
import 'package:food_delivery/screens/orders/orders.dart';

class RestaurantOrder extends StatefulWidget {
  RestaurantOrder({
    Key key,
    @required this.name,
  }) : super(key: key);

  String name;

  @override
  _RestaurantOrderState createState() => _RestaurantOrderState();

  final myAddressController = TextEditingController();
  final myPhoneNumberController = TextEditingController();
}

class _RestaurantOrderState extends State<RestaurantOrder> {
  List<FoodItemWidget> listFoodItem = [];
  String selectedValue = "Mavise";

  addFoodItem() {
    listFoodItem.add(FoodItemWidget());
    setState(() {});
  }

  @override
  void dispose() {
    widget.myAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.name),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(
                Icons.done,
                size: 26.0,
              ),
              onTap: () {
//                print(listFoodItem.length);
                List order = [];
                int totalAmount = 0;

                print(listFoodItem[0]._selectedValue2);
                for (var i = 0; i < listFoodItem.length; i++) {
                  totalAmount += int.parse(listFoodItem[i]._selectedValue2);
                  order.add([
                    listFoodItem[i].myController.text,
                    listFoodItem[i]._selectedValue2
                  ]);
                }

//                print(order.length);
                print(order);
                print(totalAmount);
//                 ||
//
                if (listFoodItem.isEmpty ||
                    widget.myPhoneNumberController.text == '' ||
                    widget.myAddressController.text.isEmpty ||
                    listFoodItem.first.myController.text == '') {
                  return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Oops'),
                          content:
                              Text('There is an error, please check again🤨'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Back'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                } else {
                  final DateTime date = DateTime.now();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrdersPageX(
                        date: date,
                        totalAmountOfOrder: totalAmount,
                        order: order,
                        address: widget.myAddressController.text,
                        phoneNumber: widget.myPhoneNumberController.text,
                        restaurantName: widget.name,
                      ),
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
//          color: Colors.brown,
          width: size.width,
          height: size.height,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: 50,
                    child: TextFormField(
                      controller: widget.myAddressController,
                      decoration: InputDecoration(
                        labelText: "Your Address",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Address required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        widget.myAddressController.text = value;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: 50,
                    child: TextFormField(
                      controller: widget.myPhoneNumberController,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Address required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        widget.myPhoneNumberController.text = value;
                      },
                    ),
                  ),
                ),

//                SizedBox(height: 5),
//                Row(
//                  children: [
//                    Icon(Icons.location_on, color: Colors.red),
//                    Container(
//                      width: size.width * 0.8,
//                      height: 40,
//                      child: TextFormField(
//                        controller: widget.myAddressController,
//                        style: TextStyle(
////
//                          fontSize: 17.0,
//                        ),
//                        validator: (String value) {
//                          if (value.isEmpty) {
//                            return 'Address required';
//                          }
//                          return null;
//                        },
//                        onSaved: (String value) {
//                          widget.myAddressController.text = value;
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//                SizedBox(height: 10),
//                Center(
//                  child: Text(
//                    'Phone Number?',
//                    style: TextStyle(
//                      fontSize: 20,
//                      fontStyle: FontStyle.italic,
//                    ),
//                  ),
////                ),
//                Row(
//                  children: [
//                    Icon(Icons.location_on, color: Colors.red),
//                    Container(
//                      width: size.width * 0.8,
//                      height: 40,
//                      child: TextFormField(
//                        controller: widget.myAddressController,
//                        style: TextStyle(
////
//                          fontSize: 17.0,
//                        ),
//                        validator: (String value) {
//                          if (value.isEmpty) {
//                            return 'Address required';
//                          }
//                          return null;
//                        },
//                        onSaved: (String value) {
//                          widget.myAddressController.text = value;
//                        },
//                      ),
//                    ),
//                  ],
//                ),
                SizedBox(height: 30),

                Center(
                  child: Text(
                    'What do you need?',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: size.height * 0.55,
                    width: size.height * 0.43,
//                  color: Colors.teal,
                    child: Column(
                      children: [
                        Flexible(
                          child: ListView.builder(
                              itemCount: listFoodItem.length,
                              itemBuilder: (_, index) => listFoodItem[index]),
                        )
                      ],
                    ),
                  ),
                ),
//                Spacer(),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                          onPressed: () {
                            addFoodItem();
                          }),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
//            SizedBox(height: 20),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////
class FoodItemWidget extends StatefulWidget {
  @override
  _FoodItemWidgetState createState() => _FoodItemWidgetState();

  String _itemName;
  String _selectedValue2 = "50";
  final myController = TextEditingController();
}

class _FoodItemWidgetState extends State<FoodItemWidget> {
  @override
  void dispose() {
    widget.myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildName() {
      return TextFormField(
        controller: widget.myController,
        style: TextStyle(
//
          fontSize: 17.0,
        ),
//        decoration: InputDecoration(
//          enabledBorder: OutlineInputBorder(
////            borderRadius: BorderRadius.circular(0),
//            borderSide: BorderSide(color: Colors.black),
//          ),
//        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name required';
          }
          return null;
        },
        onSaved: (String value) {
          widget.myController.text = value;
          widget._itemName = value;
        },
      );
    }

    return Container(
//      margin: EdgeInsets.only(left: 50.0, right: 60.0, bottom: 15),
      margin: EdgeInsets.only(bottom: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 50, width: 250, child: _buildName()),
          Container(
//            margin: EdgeInsets.symmetric(horizontal: 15),
//            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

//            color: Colors.teal,
            width: 60,
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: DropdownButton(
                      underline: SizedBox(),
//                      iconSize: 14,
                      value: widget._selectedValue2,
                      items: ['50', '100', '150', '200', '250', '300', '350']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          widget._selectedValue2 = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Dropdown///////
//Container(
//margin: EdgeInsets.symmetric(horizontal: 120),
//padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//height: 60,
//width: 200,
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.circular(10),
//border: Border.all(
//color: Color(0xFFE5E5E5),
//),
//),
//child: Row(
//children: [
//Icon(Icons.store),
//SizedBox(width: 20),
//Expanded(
//child: DropdownButton(
//underline: SizedBox(),
//isExpanded: true,
////                      icon: Icons.store,
//value: selectedValue,
//items: ['Mavise', 'Shop 10', 'Blessed', 'Shop 7']
//.map<DropdownMenuItem<String>>((String value) {
//return DropdownMenuItem<String>(
//value: value,
//child: Text(value),
//);
//}).toList(),
//onChanged: (value) {
//setState(() {
//selectedValue = value;
//});
//},
//),
//),
//],
//)),
