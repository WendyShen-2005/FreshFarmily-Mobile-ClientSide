import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';

import 'LoginSignupViaButt.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  List<LoginSignupViaButt> viaButtons = [
    LoginSignupViaButt(name: "Google", icon: Icons.abc),
    LoginSignupViaButt(name: "Facebook", icon: Icons.facebook),
  ];

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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
              onPressed: () {},
              child: Text("Sign up")
          ),
        ],

      );
  }
}