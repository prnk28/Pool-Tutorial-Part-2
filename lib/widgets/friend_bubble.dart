import 'package:flutter/widgets.dart';

const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

class FriendBubble extends StatelessWidget {
  const FriendBubble({Key key, this.additionalText}) : super(key: key);
  final bool additionalText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // Friend 1
          Padding(
            padding: EdgeInsets.only(),
            child: ClipRRect(
                borderRadius: new BorderRadius.circular(18),
                child: Image(
                    image:
                        NetworkImage("https://ui-avatars.com/api/?size=36"))),
          ),
          // Friend 2
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: ClipRRect(
                borderRadius: new BorderRadius.circular(18),
                child: Image(
                    image:
                        NetworkImage("https://ui-avatars.com/api/?size=36"))),
          ),
          // Additional Count
          Padding(
              padding: EdgeInsets.only(left: 2),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(219, 232, 255, 1)),
                width: 50,
                height: 30,
                child: Padding(
                    padding: EdgeInsets.only(left: 6, top: 6),
                    child: Text("+325",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600))),
              )),
          // Supporting Text
          Visibility(
            child: Padding(
                padding: EdgeInsets.only(left: 3, right: 7),
                child: Text("are interested",
                    style: TextStyle(color: neutralTextColor))),
            visible: additionalText,
          ),
        ],
      ),
    );
  }
}
