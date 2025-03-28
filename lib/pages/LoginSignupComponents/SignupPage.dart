import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';
import 'package:untitled3/backend/auth_service.dart';

import 'LoginSignupViaButt.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  List<LoginSignupViaButt> viaButtons = [
    LoginSignupViaButt(name: "Google", icon: Icons.abc),
    LoginSignupViaButt(name: "Facebook", icon: Icons.facebook),
  ];

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(
                  width: 100,
                  "https://wallpaperaccess.com/full/2111331.jpg"
              ),
              Text(
                  style: TextStyle(fontSize: 30),
                  "Customer sign up..."
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
              ),
              TextButton(onPressed: () async {


                await AuthService().signup(
                    email: emailController.text,
                    password: passwordController.text,
                    context: context
                );

                print("signup clicked");

                // Navigator.pushNamed(context, '/log-out');
                // Navigator.pushNamed(context, '/search');
              }, style: TextButton.styleFrom(
                  side: BorderSide(
                      color: Colors.black,
                      width: 1
                  )
              ),
                  child: Text("Sign up")
              ),
              Text("Or, sign up via..."),
              Column(
                children: viaButtons.map((button) =>
                    loginSignupViaButtTemplate(button)
                ).toList(),
              ),
              Text(
                  "No account?"
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/log-in');
                  },
                  child: Text("Log in")
              ),
            ],

          ),
        ),
      );
  }
}