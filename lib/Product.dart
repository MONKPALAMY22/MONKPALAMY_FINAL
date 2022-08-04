import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        backgroundColor: Color.fromARGB(255, 82, 120, 255),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
    );
  }
}
