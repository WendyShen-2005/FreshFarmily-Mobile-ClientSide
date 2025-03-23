import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginPage.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginSignupViaButt.dart';
import 'package:untitled3/pages/MyOrders/ConfirmingOrder.dart';
import 'package:untitled3/pages/MyOrders/DeliveryProgress.dart';
import 'package:untitled3/pages/MyOrders/MyOrders.dart';
import 'package:untitled3/pages/MyOrders/RateOrder.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';
import 'package:untitled3/pages/Search/ProductSelected.dart';
import 'package:untitled3/pages/Search/VendorSelected.dart';
import 'package:untitled3/pages/Settings/SettingsAccount.dart';
import 'package:untitled3/pages/Settings/SettingsBilling.dart';
import 'package:untitled3/pages/Settings/SettingsMenu.dart';
import 'package:untitled3/pages/Settings/SettingsPrivacyAndSecurity.dart';

void main() =>
    runApp(MaterialApp(
      home:Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return screens(scr:9);
  }
}


class screens extends StatefulWidget {
  int scr = 0;

  screens({super.key, required this.scr});

  @override
  State<screens> createState() => _screensState(scr:scr);
}

class _screensState extends State<screens> {
  int scr;

  _screensState({required this.scr});

  List<Widget> screens = [
    mainSearch(),
    productSelected(product: vendors[0].products[0],),
    VendorSelected(vendor: vendors[0],),

    SettingsAccount(),
    SettingsBilling(),
    SettingsMenu(),
    SettingsPrivacyAndSecurity(),

    Myorders(),
    ConfirmingOrder(),
    Deliveryprogress(),
    RateOrder(),

    loginPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("FreshFarmily - Customer Side"),
    ),
    body: Column(
      children: [
        // SettingsBilling(context),
        screens[scr],
        Spacer(),
        bottomNavBar().build(context),
      ],
    ),
    );
  }
}

bool popOrNot(int i) {
  /*
  List<Widget> screens = [
    0 mainSearch(),
    1 productSelected(product: vendors[0].products[0],),
    2 VendorSelected(vendor: vendors[0],),

    3 SettingsAccount(),
    4 SettingsBilling(),
    5 SettingsMenu(),
    6 SettingsPrivacyAndSecurity(),

    7 MyOrder(),
    8 ConfirmingOrder(),
    9 Deliveryprogress(),
    10 RateOrder(),

    11 loginPage(),

  ];
   */

  if(i == 0 || i == 4 || i == 10) return true;
  return false;
}