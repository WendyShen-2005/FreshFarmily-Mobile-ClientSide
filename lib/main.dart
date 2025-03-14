import 'package:flutter/material.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginPage.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginSignupViaButt.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';

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
        title: Text("FreshFarmily - Customer Side"),
      ),
      body: Column(
        children: [
          mainSearch(context),
          Spacer(),
          bottomNavBar().build(context),
        ],
      ),
    );
  }
}
