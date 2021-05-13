import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  static const routeName = '/splash1-ui';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  width: 300,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Relax and Shop',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70.0, right: 70.0),
                child: Text(
                  'Order online and get your food '
                  'delivered from stores to you in as fast as 30 mins.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
//                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                height: 60.0,
                width: 350,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.deepPurple,
                  splashColor: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
