import 'package:flutter/material.dart';

// Constant Values
const double kCellWidth = 440;
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

class PoolListCell extends StatefulWidget {
  PoolListCell({Key key}) : super(key: key);

  _PoolListCellState createState() => _PoolListCellState();
}

class _PoolListCellState extends State<PoolListCell> {
  @override
  Widget build(BuildContext context) {
    // Make Cell Interactive
    return RawMaterialButton(
      child: Card(child: Container(
        height: 300,
        // Top Down Widget
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              // Left Side Image
             Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ClipRRect(
                      child: Image(
                        image: NetworkImage(
                            "https://api.adorable.io/avatars/110/abott@adorable.png"),
                      ),
                      borderRadius: BorderRadius.circular(55),
                    )),

              // Title/Location Text
              Column(children: <Widget>[
                Text("Title"),
                 // Distance Information
                    Container(
                      child: Row(
                        children: <Widget>[
                          // GPS Icon
                          Image(
                            width: 20,
                            height: 20,
                            image: AssetImage("assets/gps.png"),
                          ),
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
                        ],
                      ),
                    ),
                Text("Location"),
              ])
            ])
          ]
        )
      ),
      ),
      onPressed: () {}
      );
  }
}