import 'package:flutter/material.dart';
import 'package:food_delivery/providers/orders.dart';
import 'package:food_delivery/widgets/MaterialDialog/dialog.dart';
import 'package:food_delivery/widgets/app_drawer.dart';
import 'package:food_delivery/widgets/failedShowDialog.dart';
import 'package:provider/provider.dart';

class PharmacyOrder extends StatefulWidget {
  static const routeName = '/pharmacy-order';

  String name;

  @override
  _PharmacyOrderState createState() => _PharmacyOrderState();

  final myAddressController = TextEditingController();
  final myPhoneNumberController = TextEditingController();
}

class _PharmacyOrderState extends State<PharmacyOrder> {
  List<ItemsWidget> listBuyItem = [];

  addItem() {
    listBuyItem.add(ItemsWidget());
    setState(() {});
  }

  @override
  void dispose() {
    widget.myAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    var size = MediaQuery.of(context).size;
    String address = widget.myAddressController.text;
    String phoneNumber = widget.myPhoneNumberController.text;
    String shopName = '';
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pharmacy'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(
                Icons.done,
                size: 26.0,
              ),
              onTap: () {
                List order = [];
                int totalAmount = 0;

                for (var i = 0; i < listBuyItem.length; i++) {
                  totalAmount += int.parse(listBuyItem[i]._selectedValue2);
                  order.add([
                    listBuyItem[i].myController.text,
                    listBuyItem[i]._selectedValue2
                  ]);
                }

                if (listBuyItem.isEmpty ||
                    widget.myPhoneNumberController.text == '' ||
                    widget.myAddressController.text.isEmpty ||
                    listBuyItem.first.myController.text == '') {
                  return failedShowDialog(context);
                } else {
                  Provider.of<Orders>(context, listen: false).addOrder(
                    totalAmount,
                    address,
                    order,
                    phoneNumber,
                    shopName,
                  );

                  return materialDialog(context, shopName);
                }
              },
            ),
          )
        ],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
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
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0)),
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
                        address = value;
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
                        phoneNumber = value;
                      },
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Center(
                    child: Text('What do you need?',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ))),
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
                                  itemCount: listBuyItem.length,
                                  itemBuilder: (_, index) =>
                                      listBuyItem[index]),
                            )
                          ],
                        ))),
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
                            addItem();
                          }),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
//
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
class ItemsWidget extends StatefulWidget {
  @override
  _ItemsWidgetState createState() => _ItemsWidgetState();

  String _itemName;
  String _selectedValue2 = "50";
  final myController = TextEditingController();
}

class _ItemsWidgetState extends State<ItemsWidget> {
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
          fontSize: 17.0,
        ),
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
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 50, width: 250, child: _buildName()),
          Container(
            width: 60,
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: DropdownButton(
                      underline: SizedBox(),
                      value: widget._selectedValue2,
                      items: [
                        '50',
                        '100',
                        '150',
                        '200',
                        '250',
                        '300',
                        '350',
                        '400',
                        '450'
                      ].map<DropdownMenuItem<String>>((String value) {
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
