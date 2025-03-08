import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home:Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            style: TextStyle(
              color: Colors.white,
            ),
            "FreshFarmily - Client Side",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,


      ),
      body:
       Row(
          children: [
            Image.network(
                width: 100,
                "https://wallpaperaccess.com/full/2111331.jpg"
            ),
            Text(
              style: TextStyle(fontSize: 30),
              "Login"
            ),
          ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicked");
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(
          Icons.air,
          color: Colors.white,
        ),
      ),
    );
  }
}
