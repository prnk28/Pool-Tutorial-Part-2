import 'dart:math';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class UpcomingCard extends StatefulWidget {
  UpcomingCard({Key key}) : super(key: key);

  _UpcomingCardState createState() => _UpcomingCardState();
}

class _UpcomingCardState extends State<UpcomingCard> {
  // Gradient Array
  var gradArray = [
    Gradients.backToFuture,
    Gradients.blush,
    Gradients.rainbowBlue,
    Gradients.cosmicFusion,
    Gradients.deepSpace,
    Gradients.coralCandyGradient,
    Gradients.coldLinear
  ];

  // Get Random Gradient
  // Build Card
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 185,
        child: GradientCard(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 60, left: 0),
                child: Text(
                  "Late Spring Marathon",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.5, 0.5),
                        blurRadius: 1.5,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(0.5, 0.5),
                        blurRadius: 4.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          gradient: randomChoice(gradArray),
          elevation: 15,
        ));
  }
}
