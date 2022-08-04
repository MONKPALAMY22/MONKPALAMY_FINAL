import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Color.fromARGB(255, 82, 220, 255),
        ),
        body: Stack(
          children: [
            Image.asset('icons/images/wp2939900.webp',
                width: 1500, height: 250, fit: BoxFit.fill),
            Text('papapapapa'),
          ],
        ));
  }
}
