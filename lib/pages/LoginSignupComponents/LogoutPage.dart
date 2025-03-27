import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';

class logoutPage extends StatefulWidget {
  const logoutPage({super.key});

  @override
  State<logoutPage> createState() => _logoutPageState();
}

class _logoutPageState extends State<logoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Log out"),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.pushNamed(context, "/log-in");
                    }, style: TextButton.styleFrom(
                        side: BorderSide(
                            color: Colors.black,
                            width: 1
                        )
                    ), child: Text("Log out"),
                    ),
                  ]),
            ),
            bottomNavBar()
          ],
        ),
      ),
    );
  }
}
