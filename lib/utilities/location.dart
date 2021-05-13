import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';

class LocationP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange,
        child: Center(
          child: Container(
            color: Colors.blue,
            height: 50,
            width: 150,
            child: Center(
              child: Text(
                'Click Me!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
