import 'package:flutter/material.dart';

class SplashScreen3 extends StatelessWidget {
  static const routeName = '/splash3-ui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 70),
              child: Text(
                'Click. Click..., \n Om nom \n nom!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 50,
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
    ));
  }
}
