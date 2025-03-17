import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginPage.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginSignupViaButt.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';
import 'package:untitled3/pages/Search/ProductSelected.dart';
import 'package:untitled3/pages/Search/VendorSelected.dart';

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
          Container(
            height: 725,
              child: mainSearch(context)
          ),
          // VendorSelected(vendor: vendors[0]).build(context),
          // Spacer(),
          bottomNavBar().build(context),
        ],
      ),
    );
  }
}
