import 'package:flutter/material.dart';

const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

class DistanceAway extends StatefulWidget {
  DistanceAway({Key key}) : super(key: key);

  _DistanceAwayState createState() => _DistanceAwayState();
}

class _DistanceAwayState extends State<DistanceAway> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      // GPS Icon
      Padding(
          padding: EdgeInsets.only(left: 5),
          child: Image(
            width: 15,
            height: 15,
            image: AssetImage("assets/gps.png"),
          )),
      // Text Distance
      Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text("5M ",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: detailTextColor)),
      ),
      // Supporting Text
      Padding(
        padding: EdgeInsets.only(),
        child: Text("away",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: detailTextColor)),
      )
    ]);
  }
}
