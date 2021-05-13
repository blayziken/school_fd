import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  static const routeName = '/splash2-ui';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Text(
                  'The food you love, \n delivered to you sharps!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.red[900],
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    color: Colors.blue,
//                decoration: BoxDecoration(
//                    image: DecorationImage(
////                    image: NetworkImage()
////                  image: AssetImage(),
//                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
