import 'package:flutter/material.dart';

class ChooseTypeWidget extends StatelessWidget {
  const ChooseTypeWidget({
    Key key,
    @required this.typeName,
    @required this.typeDescription,
    @required this.typeImage,
    @required this.onTap,
  }) : super(key: key);

  final String typeName;
  final String typeDescription;
  final String typeImage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width * 0.85,
      height: media.height * 0.13,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                    image: AssetImage('$typeImage'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
//                          color: Colors.yellow,
              height: 70,
              width: 223,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    typeName,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green[700],
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    typeDescription,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
                child: Center(
                  child: Text(
                    '›',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                ),
                onTap: onTap),
          ],
        ),
      ),
    );
  }
}
