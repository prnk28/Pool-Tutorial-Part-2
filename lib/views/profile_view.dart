import 'package:flutter/material.dart';
import 'package:pool_app/cells/upcoming_card.dart';
import 'package:pool_app/components/animated_background.dart';
import 'package:pool_app/components/bottom_sheet.dart';
import 'package:pool_app/views/pool_listview.dart';
import 'package:pool_app/widgets/minimal_pool_cell.dart';

// Colors
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);
const Color strongTextColor = Color.fromRGBO(2, 23, 87, 1);

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Create Stack to hold top widget and animated container
          Stack(
            children: <Widget>[
              // Animated Background
              Container(
                width: 420,
                height: 275,
                child: AnimatedBackground(),
              ),
              // Back Button
              Padding(
                  padding: EdgeInsets.only(top: 35, right: 20),
                  child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ))),
              // Box Widget
              Center(
                child: Padding(
                  child: Container(
                    width: 375,
                    height: 250,
                    child: Card(
                        child: Stack(
                      children: <Widget>[
                        // Text View
                        Padding(
                          padding: EdgeInsets.only(left: 100, top: 70),
                          child: Column(
                            children: <Widget>[
                              Text("Pradyumn Nukala",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: textColor,
                                      fontWeight: FontWeight.w700)),
                              Text("Ashburn, VA",
                                  style: TextStyle(
                                      color: neutralTextColor,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        // Horizontal Divider
                        Padding(
                          child: Divider(),
                          padding: EdgeInsets.only(top: 140),
                        ),
                        // Vertical Divider
                        Padding(
                          child: VerticalDivider(),
                          padding: EdgeInsets.only(left: 115, top: 148),
                        ),
                        // Vertical Divider
                        Padding(
                          child: VerticalDivider(),
                          padding: EdgeInsets.only(left: 240, top: 148),
                        ),
                        // Hosted Button
                        Padding(
                            padding: EdgeInsets.only(left: 20, top: 170),
                            child: RawMaterialButton(
                              onPressed: () {
                                _hostedBottomSheet(context);
                              },
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.person,
                                      size: 38, color: neutralTextColor),
                                  Text("Hosted",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w300))
                                ],
                              ),
                            )),
                        // Attended Button
                        Padding(
                            padding: EdgeInsets.only(left: 140, top: 170),
                            child: RawMaterialButton(
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.assignment_turned_in,
                                        size: 38, color: neutralTextColor),
                                    Text("Attended",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w300))
                                  ],
                                ))),
                        // Favorites Button
                        Padding(
                            padding: EdgeInsets.only(left: 265, top: 170),
                            child: RawMaterialButton(
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        size: 38, color: neutralTextColor),
                                    Text("Favorites",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w300))
                                  ],
                                ))),
                      ],
                    )),
                  ),
                  padding: EdgeInsets.only(top: 120),
                ),
              ),
              // Profile Picture
              Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: ClipRRect(
                      child: Image(
                        image: NetworkImage(
                            "https://api.adorable.io/avatars/110/abott@adorable.png"),
                      ),
                      borderRadius: BorderRadius.circular(55),
                    )),
              )
            ],
          ),
          // Upcoming Events Title
          Padding(
              padding: EdgeInsets.only(top: 20, right: 240),
              child: Text("Upcoming",
                  style: TextStyle(
                      fontSize: 24,
                      color: neutralTextColor,
                      fontWeight: FontWeight.w800))),
          // Upcoming Events Scroll
          Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  UpcomingCard(),
                  UpcomingCard(),
                  UpcomingCard(),
                  UpcomingCard(),
                ],
              )),
          // Upcoming Events Title
          Padding(
              padding: EdgeInsets.only(top: 20, right: 270),
              child: Text("Friends",
                  style: TextStyle(
                      fontSize: 24,
                      color: neutralTextColor,
                      fontWeight: FontWeight.w800))),
          // Friends Scroll
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Container(
                height: 60.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 60.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/60/abott@adorable.png")))),
                    ),
                  ],
                )),
          ),

          // Top Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[],
          ),
        ],
      ),
    );
  }

  void _hostedBottomSheet(context) {
    showModalBottomSheetCustom(
        context: context,
        builder: (BuildContext bc) {
          return PoolListView();
        });
  }
}
