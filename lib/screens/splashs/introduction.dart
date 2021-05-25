import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionSlide extends StatelessWidget {
  static const routeName = '/introduction-slide';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Welcome !",
              body: "Order online and get your food ",
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 60),
                bodyTextStyle: TextStyle(color: Colors.black87, fontSize: 20.0),
                pageColor: Colors.orange,
                titlePadding: EdgeInsets.only(top: media.height / 2.5),
              ),
            ),
            //
            PageViewModel(
              title: "Relax and Shop",
              body: "Order online and get your food "
                  "delivered from stores to you in as fast as 15 mins.",
              image: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                bodyTextStyle: TextStyle(color: Colors.black87, fontSize: 20.0),
              ),
            ),
            //
            PageViewModel(
              title: "The Food You Love",
              body: "Delivered to you sharps! 🚀",
              image: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                bodyTextStyle: TextStyle(color: Colors.black87, fontSize: 20.0),
              ),
            ),
            //
            PageViewModel(
              title: "Click. Click...,",
              body: "Om nom nom!",
              image: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                  ),
//
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
                bodyTextStyle: TextStyle(color: Colors.black87, fontSize: 20.0),
              ),
            ),
            //
            PageViewModel(
              title: "That's not all",
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You can order Party drinks also',
                      style: TextStyle(fontSize: 20)),
                  SizedBox(height: 15),
                  Text('You can order from UNILAG Pharmacy',
                      style: TextStyle(fontSize: 20)),
                  SizedBox(height: 15),
                  Text('You can order Stationaries',
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              image: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 50),
              ),
            )
          ],
          onDone: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/choose-type', (route) => false);
          },
          showSkipButton: true,
          showNextButton: false,
          showDoneButton: true,
          next: Icon(Icons.arrow_forward),
          skip: Text('Skip'),
          done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: DotsDecorator(
            activeColor: Colors.red,
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            color: Colors.black26,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
