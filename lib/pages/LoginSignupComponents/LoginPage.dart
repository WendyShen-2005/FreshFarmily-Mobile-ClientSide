import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';

import 'LoginSignupViaButt.dart';

Widget loginPage(BuildContext context) {
  List<LoginSignupViaButt> viaButtons = [
    LoginSignupViaButt(name: "Google", icon: Icons.abc),
    LoginSignupViaButt(name: "Facebook", icon: Icons.facebook),
  ];

  return
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
        ),
      ],

  );
}