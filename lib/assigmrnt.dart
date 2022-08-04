import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class assigment extends StatefulWidget {
  assigment({Key? key}) : super(key: key);

  @override
  State<assigment> createState() => _nameState();
}

class _nameState extends State<assigment> {
  List pets = [];
  bool isLoading = true;
  void fetchPets() async {
    var url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io", "/pets");

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = convert.jsonDecode(response.body);
      setState(() {
        pets = items;
        isLoading = false;
      });
    } else {
      print("Can not fetch");
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchPets();

    if (isLoading) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.amber,
          ),
        ),
      );
    }

    print(pets);
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, int index) {
          return Container(
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 6, 121, 6),
                  // child: Text(pets[index]['name']),
                  backgroundImage: NetworkImage(pets[index]['avatar']),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        pets[index]['name'],
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(pets[index]['type'])
                    ]),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (() => null),
                  icon: Icon(Icons.phone),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
