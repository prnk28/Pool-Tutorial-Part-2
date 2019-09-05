import 'package:flutter/material.dart';
import 'package:pool_app/cells/pool_list_cell.dart';

class PoolListView extends StatefulWidget {
  PoolListView({Key key, this.title}) : super(key: key);

  final String title;

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
             width: MediaQuery.of(context).size.width,
           child: Stack(
             children: <Widget>[
               // Close Button
               Padding(child: RawMaterialButton(
                 onPressed: () {
                    Navigator.pop(context);
                 },
                 child: Icon(Icons.close, size: 32)
                ),
               padding: EdgeInsets.only(top: 34)),
               Center(child: Padding(
                 child:Text(widget.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                 padding: EdgeInsets.only(top: 44)))
             ]
           )
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height - 82,
           child: ListView(
             children: <Widget>[
               PoolListCell(),
               PoolListCell(),
               PoolListCell(),
               PoolListCell(),
               PoolListCell(),
             ]
           ))
         ]
       )
    );
  }
}