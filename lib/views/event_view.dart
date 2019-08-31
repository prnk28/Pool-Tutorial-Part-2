import 'package:flutter/material.dart';
import 'package:pool_app/widgets/event_header.dart';

// Colors
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);
const Color strongTextColor = Color.fromRGBO(2, 23, 87, 1);

class EventView extends StatefulWidget {
  EventView({Key key}) : super(key: key);

  _EventViewState createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  // Crop image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          new AspectRatio(
              aspectRatio: 487 / 625,
              child: new Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                  fit: BoxFit.fitHeight,
                  alignment: FractionalOffset.topCenter,
                  image: AssetImage("assets/marathon.jpg"),
                )),
              )),
          Padding(
              padding: EdgeInsets.only(top: 450),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0))),
                  width: 487,
                  height: 450,
                  child: Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 50, right: 200),
                        child: Text("Event Title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                                fontSize: 28))),
                    Padding(
                        padding: EdgeInsets.only(top: 10, right: 270),
                        child: Text("Location",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.blueGrey,
                                fontSize: 16))),
                    Padding(
                        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quid est enim aliud esse versutum? Est enim effectrix multarum et magnarum voluptatum. Re mihi non aeque satisfacit, et quidem locis pluribus. Quid enim possumus hoc agere divinius? Ea possunt paria non esse.",
                            style: TextStyle(
                                fontSize: 14.0,
                                height:
                                    1.5 //You can set your custom height here
                                ))),
                    Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: RawMaterialButton(
                            padding: EdgeInsets.only(
                                top: 10, left: 30, right: 30, bottom: 10),
                            onPressed: () {},
                            child: Text("Join",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            fillColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    new BorderRadius.circular(30.0)))),
                  ]))),
Padding(
                      padding: EdgeInsets.only(left: 310, top: 490),
                      child: RawMaterialButton(
                        child: Image(
                          width: 35,
                          height: 48,
                          image: AssetImage("assets/bookmark.png"),
                        ),
                        onPressed: () {},
                      ),
                    ),
          // Friends Scroll
          Padding(
            padding: EdgeInsets.only(left: 40, top: 750, right: 40),
            child: Container(
                height: 45.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 45.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://api.adorable.io/avatars/45/abott@adorable.png")))),
                    ),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 35, right: 15),
              child: RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ))),
        ]),
      ),
    );
  }
}
