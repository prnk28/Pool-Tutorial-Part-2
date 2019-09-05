import 'package:flutter/material.dart';
import 'package:pool_app/widgets/distance_away.dart';
import 'package:pool_app/widgets/friend_bubble.dart';

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
        child: Card(
          child: Container(
              height: 175,
              // Top Down Widget
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  // Left Side Image
                  Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: ClipRRect(
                        child: Image(
                          image: NetworkImage(
                              "https://api.adorable.io/avatars/60/abott@adorable.png"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      )),

                  // Title/Location Text
                  Column(children: <Widget>[
                    // Cell title and Friends Bubble
                    Row(children: <Widget>[
                      Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 60, top: 10),
                          child: Text("Title",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700))),
                      Padding(
                          padding: EdgeInsets.only(left: 55, top: 10),
                          child: FriendBubble(additionalText: false))
                    ]),
                    // Distance Information
                    Container(
                        child: Padding(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                // Location Text
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text("Richmond, VA")),
                                DistanceAway()
                              ],
                            ),
                            padding: EdgeInsets.only(right: 90, top: 5))),
                  ])
                ]),

                // Titles
                Padding(
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(), child: Text("Created",
                            style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600))),
                        Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text("Host",
                            style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600))),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    padding: EdgeInsets.only(left: 20, top: 20)),

                // Details
                Padding(
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(), child: Text("Jun 2, 2019")),
                        Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("Prad")),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    padding: EdgeInsets.only(left: 20, top: 5)),
              ])),
        ),
        onPressed: () {});
  }
}
