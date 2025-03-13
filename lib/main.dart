import 'package:flutter/material.dart';
import 'package:untitled3/LoginSignupComponents/LoginSignupViaButt.dart';

void main() =>
    runApp(MaterialApp(
      home:Home(),
    ));

class Home extends StatelessWidget {

  List<LoginSignupViaButt> viaButtons = [
    LoginSignupViaButt(name: "Google", icon: Icons.abc),
    LoginSignupViaButt(name: "Facebook", icon: Icons.facebook),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            style: TextStyle(
              color: Colors.white,
            ),
            "FreshFarmily - Customer Side",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,


      ),
      body:
       Column(
          children: [
            Image.network(
                width: 100,
                "https://wallpaperaccess.com/full/2111331.jpg"
            ),
            Text(
              style: TextStyle(fontSize: 30),
              "Customer log in..."
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username/email",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            TextButton(
                onPressed: (){},
                child: Text("Forgot password?")
            ),
            Text("Or, log in via..."),
            Column(
              children: viaButtons.map((button) =>
                loginSignupViaButtTemplate(button)
              ).toList(),
            ),
            Text(
              "No account?"
            ),
            TextButton(
                onPressed: (){},
                child: Text("Sign up")
            )
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
