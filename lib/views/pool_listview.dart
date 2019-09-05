import 'package:flutter/material.dart';
import 'package:pool_app/cells/pool_list_cell.dart';

class PoolListView extends StatefulWidget {
  PoolListView({Key key}) : super(key: key);

  _PoolListViewState createState() => _PoolListViewState();
}

class _PoolListViewState extends State<PoolListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         // Top Box
         children: [
           Container(
             height: 115,
           child: Row(
             children: <Widget>[
               // Close Button
               RawMaterialButton(
                 onPressed: () {
                    Navigator.pop(context);
                 },
                 child: Icon(Icons.close)
                ),
               Padding(child:Text("Title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
               padding: EdgeInsets.only(left: 100))
             ]
           )
         ),
         SizedBox(
           height: 700,
           child: ListView(
             children: <Widget>[
               PoolListCell()
             ]
           ))
         ]
       )
    );
  }
}