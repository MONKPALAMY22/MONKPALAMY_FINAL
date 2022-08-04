import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 6),
            height: 50,
            color: Colors.pink,
            child: Text("AAAAA"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 6),
            height: 50,
            color: Color.fromARGB(255, 170, 66, 101),
            child: Text("AAAAA"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 6),
            height: 50,
            color: Color.fromARGB(255, 110, 55, 74),
            child: Text("AAAAA"),
          )
        ],
      ),
    );
  }
}
