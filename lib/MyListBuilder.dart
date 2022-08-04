import 'package:flutter/material.dart';

class MyListBuilder extends StatefulWidget {
  MyListBuilder({Key? key}) : super(key: key);

  @override
  State<MyListBuilder> createState() => _nameState();
}

class _nameState extends State<MyListBuilder> {
  @override
  Widget build(BuildContext context) {
    final List<String> pets = <String>['Dog', 'Cat', 'fish'];
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.pink,
            child: Text(pets[index]),
          );
        },
      ),
    );
  }
}
